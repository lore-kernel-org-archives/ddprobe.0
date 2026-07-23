Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C3DF18DB2A
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 01:59:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784771974; cv=none; b=VO6gdLaBJDrOSYo3yIW5dFNodQ28lLKbq/L7yvVebnKLuwNQNQekOI0CZymkjCu25sQSgXShBStCitBIdFFI6hMQf9Yp860e8BEES45c496dNO4GLgm/Fa2RZF94E04/0qxwClgrp9e94dxIVGl3nGc0V761K0NxPOySbOT95gM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784771974; c=relaxed/simple;
	bh=5ItSco6HnTCnWi53VSINu7JRPb0jGVeGvO7fTnRQdlQ=;
	h=To:Subject:From:Message-Id:Date; b=rVcTP63tBhSIftcob5y9/kVYfDlwYpfl/sEK6ifatSQZGCbL5nQ6XuMYE1XC0OH4QUZLSohW818BkWSdBf/tA5KwSaaK+0F+6fPpPXTaX7YcUA6mEAiOFsEW1W05xjghRZPGxBQYZ3p7N4lIrV1h41hCbVo6S+qbvjOx8egYlx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FtfDr8/u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FtfDr8/u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 02139C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 01:59:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784771974;
	bh=5ItSco6HnTCnWi53VSINu7JRPb0jGVeGvO7fTnRQdlQ=;
	h=To:Subject:From:Date:From;
	b=FtfDr8/urwUiHQaaOiTIcK2fd/iAyedqPvv6Z1wOty6DF6ad5XW2dBk89lntQUvIU
	 KmBtO4B7BQfaNLBaD2/iKNoKcY9/rMH4/wsiHKgqsyqHDTa8NtMc0qzRMqLL5XU6fG
	 Anw/duJZ0Gbzrk0KuW1zI79WiqvZYSO507wEgNiR4SO3bcO958wFP1c2Z3qpZMDl9P
	 xw5AB/bg4GYWLINIBOj+ila9A2z0+OmAQ0qIo9lo5g0n8e+dmimM/IP8dK7nnKaycM
	 OmXwqEgrzcGPPfbD4W223F3Hfg+kDa5iOjmLAnLX4K34tmWDIydVU1E/FAYix5SvPG
	 VrOjHzejeLJWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDA95C44536
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 01:59:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178477197376.21114.9001467038882460932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ac910914ed19d8728dcee05b8400ea76eb76395f66c475bef5e103dded8a946
Date: Thu, 23 Jul 2026 01:59:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784771973

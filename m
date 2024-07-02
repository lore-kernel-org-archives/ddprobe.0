Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6431B18E0E
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 04:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719895523; cv=none; b=OpnZgFwz3LC9Lu+D5FXVMhlPGIIEC4RcvapgettmTJZL12L3ABZL69HRWEhGpo5Ye0eetbpQ8Xmf3T/64zqzTmVFEYVrl34qzO+UYbdaeRQYaaSgtn6nbz1d+vmWIwHvYXk+j9VFvPrCb4hDMRacjQK+LR2fvzBVJ4YWqls+SZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719895523; c=relaxed/simple;
	bh=WOkITtOTXvgQPOsH2bqo5+qcbUMeuig0oVlQrUF+9jw=;
	h=To:Subject:From:Message-Id:Date; b=Xwy0Bl7Unz0VMwuCu7LLX628gX69kDRyYiPznGjPpr8ocGso+XyiMVzEPC/HYdfRkVFbWhHBzPdQVhpQFZzk+9wyhip9iuTgFRjU366rOienT/jd6cLtxT+Z/NtQytOQS4JANsYsV6tVqoW/Zdkso2UWMWPVkBwM7McJ95GjS2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WX0gJ6Is; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WX0gJ6Is"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA281C116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 04:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719895522;
	bh=WOkITtOTXvgQPOsH2bqo5+qcbUMeuig0oVlQrUF+9jw=;
	h=To:Subject:From:Date:From;
	b=WX0gJ6IsenxsePAsEJBpPbgsiORG+7turQxmv2sg5jMXX9iwGehfK05Zz4vruIyGb
	 Zdkt6Ttt6FOou0cS0Si3gpEJRzg93ETY7TyA56uWq2skj5Mg3PdFXJcpIR6aEp0oBm
	 xvMK6iqpS1gzIbF+EeqEZfAT9+Ujz4seWistPNu60RKbI0gczhD1Mc5U3nm8gmEt+T
	 Jqi5OkXRKtTJ03LiVejPNIDIceIXUegajocav94rrUBp2k+Fzse29DYJHssDcnZRg5
	 BnwYg/E1i/RNCeU7CR4XLweDqLZX3HX8KQniTQiLcZ09EJmP1gV9iLJNz8WjENW7+H
	 V3ICt8dC+4dLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7EB9C3064D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 04:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171989552277.2437.4508832191684960317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c1cb42da4f03574eeb6dda42ba818716eeb1567a23a83c23ec5712cce537e66
Date: Tue, 02 Jul 2024 04:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719895522

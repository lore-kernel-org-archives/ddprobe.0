Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32AD92F7F14
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 19:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779045034; cv=none; b=BU2p210r1/zNyikNAwnCP8inG0Y4uCv/f9kPTLHyB+PMR3BRX/yW/nXXnxNzheCds9qPK/uWhHfZgaVJa+MoKpbYoUO5pZ2dAMaRHa1dNm02gltr4a1jOgC+zi/CcN/8gZAaCtWi3jER+ulvaDWVVqWzs7UBOl7jGG7RHxlknrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779045034; c=relaxed/simple;
	bh=tDCqgU2ZkOODNg1uOTbbomNS3OZkgRk+cmaw3evf4J0=;
	h=To:Subject:From:Message-Id:Date; b=RkIjEHu5p4PadLL0O/FuHZbiPpZznjuJx+CHTtDt+KojjLuETQHIL7ScKTb1Z0b6EJC3/LgWHOOZLWa092DkIEGNgRJrYpUqM0STO/Kah7a0YAL3B0OqsfZ5UJ7o78D5ZBEATnilYJ9S3Agmc9HZOP9RH6+3e02rtbpyDaRYbB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MAbChFx2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MAbChFx2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF959C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779045033;
	bh=tDCqgU2ZkOODNg1uOTbbomNS3OZkgRk+cmaw3evf4J0=;
	h=To:Subject:From:Date:From;
	b=MAbChFx2gzwZS+KzE5zw75QTR6tkCRZj3iVP4z7ObbcpvYnGNQjXghxPsIpg6muA7
	 3CPDNLhJOfPycX1joaCDxpoWjaqYrS0erDF/fGQogxJavbQrrrRh68WiTDkp3mO1xR
	 8IvitKD/UrRsj46VrJcgvWaIYI6xpATCpSr+U/KFEpCOsw0Y4VMxpCyUxj2ihcUTb5
	 NdyB0e5jfE6uoWe5Wxz5vRoWFviu/knq81bMAq4lJ5ciRPZHmqPBdypCI+lg08HGSB
	 egqKkL7Zbi8/HRLKOEtoiSJL/g6SUI3NWgHNaz/vGne6XGr7vKWOOG+Y+Q0Vvi6Pyo
	 9f5Rzal3lVYzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D99CD4F3D
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177904503369.7108.994394142083032713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9018a45eb680442749a3eec062146a11a41488fb31fe40bc8699f3236ec9320e
Date: Sun, 17 May 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779045033

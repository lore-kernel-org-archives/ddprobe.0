Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59A33C2EF
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743932994; cv=none; b=mOowEqg6RRWwCZJjdpyxS5FrM6QGF3U6dZsXEX/+zZxotVsDUCgY2sf8KUI5VCh0bhxBtafmZZqurRTVHlbW1u+UVBduQrTHWJ6UvrD5MO5jTeY0aQuggoxcS3nJuHysYEvcbSB9rZPSzcDU3dZTKurTpd1uiTI6PEcUlSXG+8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743932994; c=relaxed/simple;
	bh=xd/FJVYy3j23QOKX5eRg97DE4pEqrAteCXckIiQJtW0=;
	h=To:Subject:From:Message-Id:Date; b=E0K9R9xh4ftinBttzjcCATxxq0GBb4+RAjztHOKu2Ovj/M1UpX/EF4FIL1121oUzObdHzLkkGNrf1Ww73F7FsKzXx/gCzMfIPfp7OvMXRbe0AGLEOZsHZVHP3NlR61S9E2kgJ7laSydZbcgdL0C5bb2SjSwYP98VFpFygsZe8ho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eUe9UOYi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eUe9UOYi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9B24C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743932993;
	bh=xd/FJVYy3j23QOKX5eRg97DE4pEqrAteCXckIiQJtW0=;
	h=To:Subject:From:Date:From;
	b=eUe9UOYiedsFTixAcJbTWLW+QKYV8H/CixFNJlJ7M21h/OUVGwmG3iZo5grPCMgY/
	 1bP5sWOTxgYGpLVlBC/1BVtPIbqhgf0vVPNNwyuCs6fXPIf666TfZcWIiKDjIh4YCT
	 G+Hyfp3xX6uLtG+mnYkJZKA6fOsPsO5vA1NswsGwUDFd8KZVONjLBIJG9PJLKgL3Vb
	 PImCw1mEvXfJoMrv2JmCCs/O76vXdt6Ef0hd+mklhSyNQyWR/mePOQErSv/Vg6MgmC
	 wuUbnzQ+10VsdvlwjfsoxObKZmpofPRUqRZ5yqsuy471sWgqSif5etVBXzew7OX0db
	 121XuuKS0swAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0443C3600C
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174393299363.6880.3016154862150508527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 614ad755989a47e603623e218936b05473cb65e6c12575671c2e46d9f894d8d9
Date: Sun, 06 Apr 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743932993

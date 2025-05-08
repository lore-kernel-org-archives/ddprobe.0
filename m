Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3197A13AA27
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746677994; cv=none; b=j2mc22Tp6aQ7HHUoS8WirXDWLK83KwtE249JZrpIkJPmgpDLJ8ZdhozJhgM2Yh6CLpjDlzsp349U6yEubIeqTMTFCnocvkkPZb8JZpdGfcHro2U1eBr1FlDD28Oq2fsPR/JiodcnadkAe9ThccLB0EEcC1+qCM4MYocAW3Z8Byk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746677994; c=relaxed/simple;
	bh=OVH9Izuyy1ybEtNvcMUE757/Wa7dEQ+TD+FVb3pujAc=;
	h=To:Subject:From:Message-Id:Date; b=C6K+h/y0h8O92Ai6XXkVHLnidfEAd1a+N13W02JndZJyXHhXkvfWCvTvJxGGrBPZVPjBgSEJDWouphXU7XLfFIKwbpoop6/WJ8qcQFl5zlgzA8aZ4f32WyPqtNhfUlRfNMlNlhmV0ljuOVW1xVt1KH+mXynYEldeVrYUbsX0WJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qjfNPd43; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qjfNPd43"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5805C4CEEE
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746677993;
	bh=OVH9Izuyy1ybEtNvcMUE757/Wa7dEQ+TD+FVb3pujAc=;
	h=To:Subject:From:Date:From;
	b=qjfNPd43OxuO+As+9fxilLBQ7EoART9rioHyNmVPjkccZRTlMgNolQD3jU0jRUw2U
	 c6Tc3jv9lB1PBDXIKyAq9lJZ74563AzK4CaiVC7IKRq3QSf5N9mM3mH04SBWFnWp4m
	 jNb+NHJ2mjWT1RU0Pb5NIZQoOMNQM/bqmKwzqZvdYGEqSNcLjDBrVHL8qbpnwh16lG
	 lyvKZm4Tv14IA3DtawpF1zTeYJ3n0Rr0BZHRLleJ0TA2oRerhSyFvSksWbPadNKK9L
	 fAH5adbEKasg+e7YCrtH+uOQIOaz8KCsLqI06oalYA4T/jU+/atCw4Qz1AN8uuexCK
	 lADV1YM+0lJFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9224AC3ABC5
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174667799357.6574.16235914382538308405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: def67be301c61710b5384fe26fcfd980dabaaf6d1067e7d0b2cbdea59743b82c
Date: Thu, 08 May 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746677993

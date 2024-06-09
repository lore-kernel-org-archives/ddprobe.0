Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58470200C7
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 09:37:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717925843; cv=none; b=S0UW/UHgMtu8JpPBJYINXBzAxRkH63FoSSmCk2bnMchKlkqfmBbETOsiAEVDEOtFKqe+9cSpJ9JaDf20rHZbds5TZqvo4AemgFxI1hL6UwRYKS2Qms5dZvhAw/OojacuE167HFTj/YOyzkgK0A1qbwZWgQ2K3Kh5E9L82pZwuKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717925843; c=relaxed/simple;
	bh=R366UMzpTjy5k8bMcmiW+sNl8hxf8xdOOpsC+j5B/i8=;
	h=To:Subject:From:Message-Id:Date; b=jiWuZc8is3HIsku7Z7wxh2NsZ+FXh/5aOdG0Wrk+Uoe6ihBJVE3VCi8+sR0tvPpAuKezQU+VoI5DzFtIKtWEJyeyhpGdt3cgXmGo+W13Nbr2wInPbJHSfgzBg5WYkD5+fC4qkRTOCxsMxHm9uKXlLSNZhuN1dDAfMpOSptm/xMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=frGEAe3A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="frGEAe3A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0800C4AF49
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 09:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717925842;
	bh=R366UMzpTjy5k8bMcmiW+sNl8hxf8xdOOpsC+j5B/i8=;
	h=To:Subject:From:Date:From;
	b=frGEAe3AyxHIwTI8QZ6khOip5+hSh4P/QFqtvRv0T2ZdCXIOp6cEh7WuzHoJANPyi
	 nm5dcQxGdj4+M+u+n4XIoD6qxuXrQ4VH00Rf+1j4JBlYQsNJmWrJlCPLhoKtrJgOnI
	 2HOrxz2GWSAp7fzLSMdop6PayT5AAVLav/HJQ3DuWIHDhR7XZe9NILDEXh8pwpBrQl
	 hDZmNtmyMkP7OfTWjSpyRYzS/+3zcoBwBYWVFRDBRp9tBInNzW6C1od5ym7OVE5rcn
	 XaBHn5B7l6KTcAEiTUZGBzWThPFpiV7toAlUjNLPaz8eFxPhZNj8BfK+4vQAa4+3sM
	 VeZsdVcd0VeXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFDBAC27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 09:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171792584276.3680.13555753314646167338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 246fe81e2cb31b16cf3548c76b1ef7c3087fc762f6e57b4873865fb4ca7e27a1
Date: Sun, 09 Jun 2024 09:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717925842

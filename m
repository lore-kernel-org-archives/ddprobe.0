Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 664709479
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 21:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714339943; cv=none; b=PICk0Rf05d4rSic/cV4KeG3v3xJi8M9Z0Fhxup1ujJ3Z8FuLwtDjq613g2buz9S5UTvTiiekvELB3qcW2cfFWnsmIkdTSGTyIUUSqeiV7v+2Yld3H0zDf8Yb5QHh2h+K9tz1OqL9GYl4oUmRnJLy8P624lTWmUrj2BC+PMkWA9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714339943; c=relaxed/simple;
	bh=wQiMnSHN0Mq21BStxXeW54EhzAAcrZazUggg/9ZJPDw=;
	h=To:Subject:From:Message-Id:Date; b=SZqQzgjM61O2OfHYqjZ3Pt3VpwrKcUMneT6NMZMOO+W3OX7X+tB3agkg0tGUdka8U3eKJCSKuFWEiLXC3u0pAKh0yykDx8P4Th1iGQ/cbjUNyqjpa8WdhV0APfis+RdhwqwYTz9cODdNpXPP1OZNqUm92b5aa81cFs1GKY8V2a8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TFbDiMKy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TFbDiMKy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E81AFC113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 21:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714339942;
	bh=wQiMnSHN0Mq21BStxXeW54EhzAAcrZazUggg/9ZJPDw=;
	h=To:Subject:From:Date:From;
	b=TFbDiMKyhPaOZLcXY9E4g1YHUfzIHLr5c1g5b0noF+a/XmtmtqmRBnrHTEaWsAGNN
	 o7KZavs+tfe+U9x+ULLVlJP/yPpyNuCyYNnj0vEX/u8J5ngRgvekURAzUPriUwthgX
	 4WQr3qB38MTiJoNsTTmnDNqeadEQH44pgKl/m5GBFOsSqhN/9Y53VFsnNEa25zLsv6
	 Eo+O4C1H6+VvgqRoJx8aLrGaL2B1xN0nDoxOZ5SXHC+0Yfn6M8GxqLfh1ZGQIrs+Ti
	 5mTQ00CMXBIbSC+YzpFrWmfvDLioxayVHdt2nIv8ch1ikwbh22chyC6/v0pjOoPnFc
	 lU768dLM3sWcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDFB8C10F1A
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 21:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171433994281.28208.2113435345934987050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a499722c96fb238e0a3a913a84e7bd5866112311a72384133a61e40d729f114
Date: Sun, 28 Apr 2024 21:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714339942

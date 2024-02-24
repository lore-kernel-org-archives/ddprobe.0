Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEE9D4CE0F
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 19:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708804697; cv=none; b=jrV/qmJEuiqIsobeI+7/VE1lpfDIdIoklQ6o9LzxVlnSWC/KlWge3Pfjx0481/wiFQuS2ZU3he9S7in1TX4wHD5ByUdEuQc0C6oBhZL7YLtQ0fmWj3GKNwmd7gYbE1ESeZAhkKMZQrNI37oDIlrTFvqu3ym67aHBH8JjXp8UMcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708804697; c=relaxed/simple;
	bh=EknjpSL3BQy7zU4nDZbagHze6ZUxfLipIAaLyAeo33M=;
	h=To:Subject:From:Message-Id:Date; b=qLEhJn5TM8+SK+AXIBC2ncXppj3l4tavTwz1b30soFU0pjzyRNU9A4K2Rdb98L0HkAXRnwK45OJixQkttOuzV7e8/RqMQLC3MyCMnDRI5T07F4adYDt5WRC0wl5nnbLA97Nhp34Gv3gL5dXFMf/2yG/+ToxA1dNm+D74kXfmDE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IHpWFneK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IHpWFneK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8696FC433F1
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 19:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708804696;
	bh=EknjpSL3BQy7zU4nDZbagHze6ZUxfLipIAaLyAeo33M=;
	h=To:Subject:From:Date:From;
	b=IHpWFneKpKm8muVW8TQT+bViQ9LDaiYx/cI1D7O8tCcXjvZFB2QyiSF+QSCA8wNWw
	 i1upv79GNG+roVWFtIdb9JuR3hNhbbBBFN9wN+ShqCVui1JMP4DEuM3Kds8PY6QG9L
	 rOBgQah1ZDUptl63uTP87GA0SA0h4+Wz34YVWCaB4tIvnPxMwamngWijDt7k7fxzj5
	 edDLBmlLNmPftyQY1zMGu4ielmTFvkcHq35il+Xi2uM+Yvh52QlyfR7YoWaIe3qPy1
	 4fikgOsDIAT9XuCDHNROZ+LwSrX2DvxqHlsjdPnGYSEpHtAbQM5uzFt7fNdZuPXmId
	 /tD99qOvNeKOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AA84C54E41
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 19:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170880469642.23229.13241263804405619247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20bc9938682438102e07d8284deb5da33f686f288f10c9a04fb5449756712238
Date: Sat, 24 Feb 2024 19:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708804696

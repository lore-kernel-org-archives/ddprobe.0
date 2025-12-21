Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C88E4288C2F
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 16:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766334233; cv=none; b=SVTfzCT9zK3vdJxb18iGt+kDSp5KWIqUpW9D3aOHrNhE1TTo8/ETDo3aeTSMalc3l4DjEzGDCyHB1p92e3utrCm15TYlxpTRtaHC3Pwsd3CjijHHcsV4lx/3OtArgS8JAP1LFWydXngZNPp3Qsc9hfOIG/oboZixwPeQ3zAd8jQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766334233; c=relaxed/simple;
	bh=1/nNJbMgLscv44jRUhRUA7cdjR+XzekRSbI2Wbr8Fi8=;
	h=To:Subject:From:Message-Id:Date; b=Pk0ZEV0p3+VxxedJH+WlF5sM/IF1BRryzOXQIGdkpTO6eMPXavhyrE6W0TJwRiQRaJ3aKb+TzhB1BGn257wvXHib4YRU9jMssQy7ePL7Ob3WXSCUF7h5ooD3S0Cgfd93kgdnVK62GNCXcsxEjmiRZy5MwQnIdiC6LFKKFuZ/kdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XhBYBdWw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XhBYBdWw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D04C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 16:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766334233;
	bh=1/nNJbMgLscv44jRUhRUA7cdjR+XzekRSbI2Wbr8Fi8=;
	h=To:Subject:From:Date:From;
	b=XhBYBdWwzrHbMlf0RiVz/xV6HYG6kokwKNE7R2GpiOjReNri+puQYoprq45/vKcyn
	 lS38eNPBes0YzfBAZZX8BiXII44q81tB6PuPHcB2xfjkZk1Q96V+CkgObomtO5XbXT
	 yQyP2ZvGFtGNPHmxEkISvEe/BWLTY3POgOkEzfCJeCMj7wzWPuszFNZVZFvrnQEc0Q
	 lO+lSL9p1WAaQGDf2brzVdHODXtzE4Iqvg7ifMPwQRb8WWO1iqkCxFE2KZKuX1nbLt
	 ET0gO5Q4lYA620BBrzfomkRHJ+Ke92MvgN+/TiGz2gmUAPtFjHfgZRrj9MQO+Des1z
	 YCH6lxl8HXG/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C2AE67482
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 16:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176633423358.1884.16321793852928064232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d841e84e2d42069b11a8d3826181f03ec993b4e8bc86f21da8b201a2bdd56da
Date: Sun, 21 Dec 2025 16:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766334233

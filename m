Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347281A3174
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746207594; cv=none; b=AftOzZT2O7B6PtWSPLLlyi1QZLAOhn64fiJsykN8wtvXoVIZ7Hw/8meovcK0WI9ewooP5fkPdKFRXLF7vlVnXbhBxvg7FawGAPDPXakKBol2Heh+Nnw7auCLPUQzo29jzXp/Yg8aIsaba43KP6QCY3oV6PmzN5VeJqdnL2Fu1+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746207594; c=relaxed/simple;
	bh=YOH1/56GmjwXWP8r2SrWrt3PpqyHEjT6W1ZWO0eYhL4=;
	h=To:Subject:From:Message-Id:Date; b=S1bIqKeiz7V5nQBUnYewi+5dCzEAseSSzYMEZyLKR76OX3kn+N0QmWBk1txFLVOm18vzh+szk9wTSE1wsRiNiv0KkHPpDS4WjiWA3GOUCyCC510FGK5v5SAky0Yg5Tb4pqdftIb9ASho8cIPKmnX2G4XxzywPw0GUlQE2p7Mchk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HdkJoDlo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HdkJoDlo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F75C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746207593;
	bh=YOH1/56GmjwXWP8r2SrWrt3PpqyHEjT6W1ZWO0eYhL4=;
	h=To:Subject:From:Date:From;
	b=HdkJoDloGAGq4k4pc5HUkLUuDNgCOwN83gHfpVUxqZw6GOv8B6iy4xqJ2oNNZn3BC
	 5mZ7ReeVj9rIZkzP8a2zDtyZ9wkprk6j0v6yolZgGkKorvBr6MTe0gIre2TKGDrVEh
	 8B2SFz6FYVYS385RCvVUT9+L1qpRsfHEUGSzJin0vyF0UXN/mSsk0tgpw8sK+hb6HJ
	 pevpxaYeoBX+RNcBvg4yzP2SiFs3SrIezOttxmlnzdgr+Nx7FuZO5txjJOCcn7pHky
	 wh1RF+g9zaWJxVq9oa7N2sxHfKsnYDm1WyaRBDLD7cIP2j37buO3mM0sngr3MOQF2s
	 jUl5V6hYv8BXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFC5C3ABAC
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174620759357.18659.4689235549086282810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30bd122022cb34bf9b489211bcbce590b9cf8ced19799dd20c6e33807ae369c5
Date: Fri, 02 May 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746207593

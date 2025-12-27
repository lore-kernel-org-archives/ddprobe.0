Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30F1015E5DC
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 04:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766809434; cv=none; b=W20xF/cGmBWVuSooa6VGse/3HG1LLPh+O246Dc6vfyhAYe835fT4mnNO/lrCpaNPIo2C55gN8DA5eZQ32GFtQ/TjxGM1/4j9/jg+RFg8zvc4MRd6aon27fdFH8FqH+9/ZLIDY7OhMtADhR2bgFYu9BC+SC6NWlckprZ94VrJVf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766809434; c=relaxed/simple;
	bh=YjBe/iy1WeWHi5tNNl1QDvXejp3fsnUr+OWrltz9kK4=;
	h=To:Subject:From:Message-Id:Date; b=c0GWl7vqv4hM4FmQBE3L4JmpO6bn3S4GNTnbPovCCHa8juYbl8fXkPU316ZlbnvllSriUiSi9Tk8miwvZX/4yXqTGBh6iR8x9DGFe2hXYpEkyHSIH7buuKFDsUO5dHC0snhXjI3duQMgR/pS/ZywAV7zwHQ2W1tRSEUc5yE3jR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CnPziw/k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CnPziw/k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8DE1C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 04:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766809433;
	bh=YjBe/iy1WeWHi5tNNl1QDvXejp3fsnUr+OWrltz9kK4=;
	h=To:Subject:From:Date:From;
	b=CnPziw/kO+ASuKtmMWKOwW/HCxFU4KKLYYWuul9tS9bVo4r+6QqEQ7uNtVLFjE4hA
	 HJxacRfuaUWfULq31yuCCpTt9J0SWA2s3T8ZXyt9B4T+hbW+ZHd3N+ekO1m4qu62mg
	 juxlUmaTAKz/ag4kOMwPX42A8Y9kRv4SP776dc1C42BZtrlpMjsAMXMiuogF22U91c
	 7KObunXqo4E8Jp32lnwSbURyCeqGfv964bQa5NmhT8zCokQEcBrn5KDTX52BwrTznj
	 LjdNhtsDdUDKCMzoZQPUQTtAo5LnT76mJhpjP9jpRbmPMY/pJhfdon5ymPJnbPQ1h1
	 V/5J2ynrw37Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91801E8FDB0
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 04:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176680943358.18036.303569256673932041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 025af72a63bf93b7c46213c7297759d39a7f127161aaec93ce9e9106ad03f482
Date: Sat, 27 Dec 2025 04:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766809433

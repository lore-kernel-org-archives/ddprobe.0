Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 259A4213236
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758167394; cv=none; b=F0g4YuSQT9UtzhFQWQsKqUPTKjiFfPntbV4kMEyYXedmzM1uFjc+9/WRvsnsi/y8Rcr7S9lb9tDa4Pb+GBZ/7Vb3nf20WGiIbbQwr5cU+2zE+HblPd6GQyEVLXPudFzxFe/R8tXnQTMJPL+81UVsG3OC+OEoBPz8ojyQprAIhJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758167394; c=relaxed/simple;
	bh=lRqpT11mGliOefpV+c+v9vMkXwrz2qlzTMhFpMsi628=;
	h=To:Subject:From:Message-Id:Date; b=VoQKxoyOfTAIUu0ERNu2ylPDQxI/UvvmgU1SRhOA7pReF3H/d+zM3Fq5/IqeVVOzEWT2Li12eEpvw/GSPaUkremkqZ2oS4s300gTRG11+BnIdjt+WiIYyR+pFuIGcoDCFaFYOcKMhii4ZPBNsx99v6DV5qNaQOzfp0PnT1eL4wU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wg1pGLBq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wg1pGLBq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F79C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758167393;
	bh=lRqpT11mGliOefpV+c+v9vMkXwrz2qlzTMhFpMsi628=;
	h=To:Subject:From:Date:From;
	b=Wg1pGLBqJou2S9XIfLyPIvE2HiOwtAXNbpbnZdT1nQQ4RnoZbQloOuy9WHMEuWJ1l
	 1nDX+et5sevaJUqLICiIv/RK4gv1ukxZK72RGH/vN5FilnmazxTa0zbhoiLa/Y4gBk
	 YLXVVULNtbovxb4RnRropLrO/sQ+oa0h3YdFbKsRS4PnXEwIADnPfcRgYpXwMmDMol
	 RtCwz4ZYeLuNIIjf8OaHHflCMT8gavPA3UZCctbE6xEjyvde/fOTIc5yg1uijYCMqo
	 r2QRBGw9cfWJQx347KXV25T5HijAXTB1FoUhVduVQaCnBh7BAJ7hFvO5KP4cARVvcV
	 /A/Oldt1fY6Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F768CAC59A
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175816739357.748.9919646316835851187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e140b492f01d09cc48ee95e772c394c406eb78b717bf190b25ca42f9673a167
Date: Thu, 18 Sep 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758167393

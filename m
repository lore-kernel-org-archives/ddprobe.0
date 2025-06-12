Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2BE248884
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749738594; cv=none; b=IlcCQ34QgjmbGj6hcT03EWdSxPtX3erdZvNqnw7XsWFJD8E/MLwj/iYy2j4x4a3RLl5G7b248loFMOllaNXfY8t0d29BzsbbKeuVQuCkk6ToOWKJq3tzcSylw4YPPWlCWvZ1ckzXtUWxedLigNXTqDvOdck+QHq0K+9LcNNoLsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749738594; c=relaxed/simple;
	bh=mu2mkrwP2o1EyIhMGYFo7z7JcWe8mlSSksoYBnTDM2I=;
	h=To:Subject:From:Message-Id:Date; b=hCUCthAxV/HIFnPXJfESU5v3FVYn25Qlorgn87inu/ok6wQsvK7rzmlHwkRksfaqPSOHoZbrvwdUVicOaFbHBw00NHJvUFGOCZKLN0zDTcHp1wIdhpeEhIlXHjQorPMfXTPpOVGFnKWkgnu4BGZxMAkWrTJcOQ6K3k5trYcu74g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SgZzpm+j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SgZzpm+j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9254C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749738593;
	bh=mu2mkrwP2o1EyIhMGYFo7z7JcWe8mlSSksoYBnTDM2I=;
	h=To:Subject:From:Date:From;
	b=SgZzpm+jvyX2XGlzD1/SmI5mVllrCQ3a1/wLRa0qWA+5qCx/8sxQ1apuLTaZHs9v+
	 +F6NHCwFcS40sDnuc2SAT5NcP/AwU+3C1p39xELY+VIhXiEstTaEMYWn7m7dhzJNbD
	 Q6zXSTgf/2XPKX2Yb3mlAH+ve3/yxKxSt2qvC1yMwPNxjoC2SlhOym6HH2VT9OLZsJ
	 Kmsa67fvahcbOR9Jz0NIvZ8T/BBlP9J7n+GwJABuf5tAZCYaLjEd5M0Vz152M60Oqo
	 vpOl0mfmgx8S2aQRDTox2YvpEKH0HkWPa/2BDwTWlgI9TmdTh4ocXft+ES6+k25+Ny
	 29TDvCMXPk3pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957A1C61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174973859358.10428.16560278114846486296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c39357fdcc64e076ae3e2324afb273b67dff1bae874e21461719473fa07da497
Date: Thu, 12 Jun 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749738593

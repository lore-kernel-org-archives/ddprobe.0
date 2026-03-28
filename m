Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09FED2BD00C
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 06:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774679094; cv=none; b=cTO6hYQ2OefRbijvxJt6e/8IK7xfh0CGeD0eIWj3FDc0/9d/UZuWE638f3EsNuJg7PA+54hBoRb/muhyIQDKkULY/FyN9UnIsEXYRWP71p5k4a3QiRsb1+X1/Ga5jXOqjJZcaoY2PvA8Pg4jLsRGdgtQTvbuqNmWry5ja6MTKLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774679094; c=relaxed/simple;
	bh=U3DMWBOTB7IkqsiaU2JEKUTvRJiOBpywTpJjBJeawts=;
	h=To:Subject:From:Message-Id:Date; b=DDIfpazo0JgFd0fmRgvphB9U6/7Ll7Z2fl1A1D9U0FdnybNhPmQXJYJjaNoUQ6fvKWDfV8QtWZlfVGGM0/Eixd8UwB0cnubswkKEas7xRnENpIGf8BsbUpLpnV0CuT4N4sIMBQEUkVn4FYhDCqAVLtIfrRz6dSCE1su3YDG0pWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FQb/efFH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FQb/efFH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6454C2BC9E
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 06:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774679093;
	bh=U3DMWBOTB7IkqsiaU2JEKUTvRJiOBpywTpJjBJeawts=;
	h=To:Subject:From:Date:From;
	b=FQb/efFHD/660bkdHEgKF/D8EdfIWYNAkFBAzO1w2fqjXLW3MdtJGTUzxyvCr317F
	 8/FlkrdoasCQrxkjg4whW4IW75TuvKI0JGUsMFmXNMm82Aw2FpnNRQ0JCzO4OL1DnL
	 v2d9x1Zoel0AfW93CeGXm0dMPi71FY4KL0Z26h6B0QLXYKYRmkZgNVm1Pt9gaX58BK
	 vk6D2vvtQSEfrh8hUiJ/CeOftgVC1GQ1htiemiRLm29BlAKqMS78NnEr7+OGLn4IBN
	 M2rtOHKXOXEwrTde8KhzqJEfVsyqHZtWC0LJQXd0+GGVQOsamiibVmXbQt4Ea1g4um
	 8c/XpHBVIoxMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924B210BA425
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 06:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177467909358.17755.8859346058024631870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9071111a9ab636d914de55e76c226450d47f36edeb940d4c010175836e89d41a
Date: Sat, 28 Mar 2026 06:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774679093

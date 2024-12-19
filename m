Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 451CB145A03
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734584754; cv=none; b=Qyw7GxPLPDUiIvjn4BoMl8Y3utXupeibBh19SFXCGyHb1DzaD4F7mfrRDluigkTwcwo4WZNkPzWhJv1Bnj5mDoY7E+3uFPobmqbK7Zyq+ihfLLfLaEMt51GVZXVQsMyrbk9sokBxbxwH78pN6k9FoepWCZsrwZg6oC9216nuTgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734584754; c=relaxed/simple;
	bh=vO+pOAK98tfFYlco3CqGLFzittEtjCuO5P2Cu0uClXE=;
	h=To:Subject:From:Message-Id:Date; b=cAi0XzjpfAF1QVBoyMbLIe1rUYX6+HvJ0HgjoHUKC2k8nH5y2UvFmWX9Wv9OQMbcRMkkUj/VS6i1adBNLxG//VT3DoaBVuBLGXOhNc6qibB+qVbSbu6Cw7jytJgf42Lgc/pe32q1on1XT+fnW+s/EvEhhvM0/d+EA5EDzMiwzHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=drbFwDvy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="drbFwDvy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B484CC4CED0
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734584753;
	bh=vO+pOAK98tfFYlco3CqGLFzittEtjCuO5P2Cu0uClXE=;
	h=To:Subject:From:Date:From;
	b=drbFwDvyDwuUWq9ky051mpaodjq28jDC/9ur2oBF0LU9lJVuxkRPcRkuZDDEAZGiZ
	 XRcQ7J+zLj0eTLU/l+z4iEZlhNxlqLdd8bJZ82duJXgzwsLTzUFC5rC/v5R/sbLI9l
	 a/Y/3x+332iogNWEV8iFbX0TH9EajDikmkMGntFQlclbTWgMFt6/ACCOoWIof2Ddh4
	 RQ8ld+oD+zbfsjdAMEIO8zAWTPGb5nFQlDvCfIp9SPwN6dr1Qz2SY0p2iZNRU7wr+K
	 +rB0CN0Hr02kgF8PbMIL9ofu8LNngVlw3GGYH866R6yCBUR2jZzwAGo56q6lgMyLDd
	 dkoTSHG3PmOiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E5E7E77184
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173458475362.15848.16247486348576569220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10c7404106b86e1772b72999e60b2bbf0df4a0e4b19eaad5bbf01e70be5fa2c8
Date: Thu, 19 Dec 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734584753

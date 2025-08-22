Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380211509AB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755835794; cv=none; b=VAP5A1k0XnrbLIA3CXme/sabZvuSUyH5s5j+4s8AzliobzMn64yJ0PHd7ojvqxpC+iMjWvXAd2R0EBF6lOFT8/39LbKeC5sYCwZabp97j0tnTOCAmI10iXsOLkYfs9jAxnj8as+5hSESQYWX3GMjsiP96SSxdEhd7g0Ue97poJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755835794; c=relaxed/simple;
	bh=xy/5haKypDs5GW74StH/41uYivPrU/3+JklQ0cMBm+c=;
	h=To:Subject:From:Message-Id:Date; b=lE8IfuaLZmdQTx+sNYfx8/Q8uisR1aeIIaoK0bN9LJM7+xXK4HMkydj8XjxIDfE+O8Wml4laNWnNT/8hZxn11awQyL8hqRkFqxvgaCT1dasnC8vrGlqX4h3hog2it/tje9lTOvpq6EBhms5lVSn9E9tESHcjODTx73UCNAUF1YE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kql3kI7X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kql3kI7X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C544C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755835793;
	bh=xy/5haKypDs5GW74StH/41uYivPrU/3+JklQ0cMBm+c=;
	h=To:Subject:From:Date:From;
	b=kql3kI7XfSfmgCytPONP9jxx8/nQQf+a60B5/c7g4WbPrC2s1tCfoRgN1Xqywekq8
	 nzOF9Ur2VJM+pA1MLVijlcCn+9Le8pY+Xr4b6EuTtHYDSWQvFaqTEOqXW2tSDglHWj
	 02aPcbw1Nxh/SJU2cfb1HaS74/U1LCcDywQUOg2+3A17sA+ixQc23OsIMnmJVFGmuD
	 1+hmPmKmfLCoOixiGo0XDkcEilQgBkwuxOnnfvWTox02f6vBrAmpL7gt7OnVScy0Ll
	 Y0aqds6yeFe+Qdzpazdqxd/zE4XNF4nOoA8TU1S82g5Ryv6tpSGUlojhZqvSwb2a9r
	 JnHoU6btkYE6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DEAACA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175583579357.19241.14525601212455638832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 988beed6fe11ac7b53059a607f844d4bff1fac67b3483be699d86ed47c09630d
Date: Fri, 22 Aug 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755835793

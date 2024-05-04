Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5827428EA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 07:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714808543; cv=none; b=Q4gfS/ZqsX6COuEE5G8O0Nyj4zyJINXr+rY8nR/SNHb56bmKM9RiCeRCW5mMnX+ZJ8qgKXE1suKrp24ZDBhNoYc9x8xcZOweJNyHIJgBp3euqAqArmKjsFsW1toZRk+fIRcEbPb+JNzgB6tKeXpYUuG0feg0/wGF9T8zKh5VNNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714808543; c=relaxed/simple;
	bh=y4ewnPMZQLCnCHN/5hruRc7Vy4ROyQ8aiyZ8qPrUfuk=;
	h=To:Subject:From:Message-Id:Date; b=iO33L4nBamJHJBm8W3d13DVgEVptuQ7tVi35gDZ7a9yF8WZdKXfjxltxR3AQIlrglVguXl5U3Vmh2Uj6EGTMcSWbLpcqlmqJUzSVa3l2lYueXvH2drkDM1MBQQDG3YVoaI4Sl4YYKBofBqEfHocEkxbw/+h5AB5L5uDor/h1nfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q0yDsMia; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q0yDsMia"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB1B6C072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 07:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714808542;
	bh=y4ewnPMZQLCnCHN/5hruRc7Vy4ROyQ8aiyZ8qPrUfuk=;
	h=To:Subject:From:Date:From;
	b=Q0yDsMiaNk2wk5lSJQoSU72wpILx2c8JyjpVV0l5tMqGeFvBxDVrT6Eygjm5+nW1m
	 rMcOh7FJy+JCPfFSwMThqQ9FZSsGlKHZjmPZsFSZsxwJ3w10wq4NHBGeb7Dh/WYCyt
	 zW8yS+8ryI32eYUy7g/Ora3xo2QOG8VxRsHiZcX/bnSU0vboqTddorLRpKlGf6lDtI
	 JE9vXq7gJH9quFKYJ623fJ/iYtYQiqSMdiwtEUDAn9Q3iDWyYXlehzPdJq/V7SNmcl
	 OkP/6EQKiR1NFxbkyZoZkhOT/+OZ7RGXuv5NJ4pqqC+280xKo7PVsGItG5kj8qJXTN
	 EMMMZaclQ+eYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C36DDC4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 07:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171480854276.8429.16651545684055626673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f545b8977a55138c20ae65b0b31da9a80918f1d291dd3059f44b55506458e326
Date: Sat, 04 May 2024 07:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714808542

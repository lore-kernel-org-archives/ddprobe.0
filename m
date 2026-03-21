Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8710376BEB
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 15:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774106093; cv=none; b=XWkTraVv8cW7RXFKcbbWwi/3voPwfTHObvvy4+tVfj2KbWRFx6dVM6uE1t4OCcBy7RrbBdqbD/k+ftwwv3P253wBLe+C4nijCnpiSPRf76hgSGNLtoq20nbbOMVpN3vEFvh6GpftUQsAq9pnEjuoUImx6uNijNAdBBibiThWwtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774106093; c=relaxed/simple;
	bh=4345opPSa9ZHKWQOIxReVwwgSdqgOlj9sXcEzDREpB0=;
	h=To:Subject:From:Message-Id:Date; b=ut8h4VCowCL8N5zFVTeFJeBzd4kPGaQNIpi2qWzpglEuGhI13EyAeeJcKCec9AgVY7e4oslWymKOVNvIJq+EwJuQbCjr6V6It5iYLR/g0LAUw2wVUwwQWz0HfUPQRCL+LWErSUpX28mqM23CCWzdXJ2hGQrZYYFctxNNgosFtYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gE0nF5Jx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gE0nF5Jx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52B0C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 15:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774106093;
	bh=4345opPSa9ZHKWQOIxReVwwgSdqgOlj9sXcEzDREpB0=;
	h=To:Subject:From:Date:From;
	b=gE0nF5JxcSIGxqz/3nJ4WvJbgqe/ASNrkmsbbZ/Vu9l1KO6CnpefBImMogloKJqDq
	 i2cEo7Vy1fJoV6JUNOoUNjQJxQfnBwp+7NHcmt5GsjlBGe7CNx94gKyKNlJB3OJUU7
	 ug2O/JXt5aYB88Qsx6MnlcTVJQmMkxX19p1EGL26J2AaQVCF4kth7fPqPMnTD48bXQ
	 +QxEtn2+zg/9ReixKt9RpwOj9vnm1ZqPfnXxxz+WnDi0Phaop88RbWfrHl+DTEH8db
	 WdaGt/iOfx1PZlqCoxnuW8gRXwdWBjx5sUpKDd3FNgbMy3AbdOSr39Kpn7CpHyUYHT
	 tIVZRiyVtTjlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913E11094478
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 15:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177410609357.10864.12397811627093013139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ad82cf147e5488a6363b9c8fee0bb7cb7b6f3757c66cde3b8995ff1f4e88ee2
Date: Sat, 21 Mar 2026 15:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774106093

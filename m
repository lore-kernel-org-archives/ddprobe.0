Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2371E185B67
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757212794; cv=none; b=AFaztxkBVCin0k9b2c+7dIwq5ESFMOc4mIg/bhzC1VIrSREgQjSxFbtN+FtRESoUewgpnF8aXUAIjOyIX/ZYhPqGpr2OJHU9MDOLyGD+tIJydk64ab3QGO7YT4Y/Z11WEB+rXLi88h0x5LwvPo6ZhVeeVfxvQob5BmRK4aFZNfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757212794; c=relaxed/simple;
	bh=Uq5sIulKdHDtosuET8zrClx3xEYsuUUkE8R1C2Rjp48=;
	h=To:Subject:From:Message-Id:Date; b=XeJlMu5r8hvXoUSBKAZcAvDx9AHlPxNIL959RZ2fxcszmHTOmGmqA4tknhlmy9k2USLrNO71yxplQizYHNXL5lTeAIfCQCM5EbKmGrWJZy45OZBzp1/izUvrADOzyGZoGLF+QA0VPy4lXLfMPooBkNLnmH6CN5CKsFiui4GAgUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RvOWmwdW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RvOWmwdW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1693C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757212793;
	bh=Uq5sIulKdHDtosuET8zrClx3xEYsuUUkE8R1C2Rjp48=;
	h=To:Subject:From:Date:From;
	b=RvOWmwdWghIvH0VCu881TlMIlh5L6NWJL9OwUVIPcIe6Hl4wyXH+XFFr/l/7F48Bn
	 h6qIeiPT96/e51Ti/05Yz5HOfo/MIJOvxAAJkEP8/JK3aYnvbAouRbZ5dZDSRaq6nC
	 K6z1I4dnoB2ZSQX97TFp5V5VwPgsTd1lIYh4Gy/Zipl9HUdK/paZMZ/NYBoizZNLXz
	 wrOao+lq0Tb9EXC7JgmjkC20UXTEhaQ/ie5zOzWu0K3NU4GztbH+8SG7vIsA1vCYDB
	 GRI01sXsfonG6EnXNrYIJiafWgkWt8LMtQqyphbNVR+7gju5oRSdoYDdsFS+TdALs0
	 5Fd1u0X2ybRtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911E9CA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175721279357.8615.13215809245421849479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0288bb77e450920a8150cd0e29bdfafe36f268cb9d1af24502cb17f19c5c8a1
Date: Sun, 07 Sep 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757212793

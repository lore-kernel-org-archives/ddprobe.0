Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9B00277C9D
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 09:22:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764926574; cv=none; b=dTEz1a+CRoGMTjTTpqGPj2of4T7BbsaVLmlX1M/yj+2eWqH3ogC0Dy5fAZ5HWPg4meZXUMtEM8sU334thw9G+JcujIdXUJnk1WJdDrFkxPL+QE/c/MCCpwmxav82437tQG5c1YoHC0Kev1WXjcK33x7zA84emFzqcEQRcAgO3cU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764926574; c=relaxed/simple;
	bh=K4RsgYD28WuqwyCO+sxXBa3tEY9jSWI2LpWV671CBrI=;
	h=To:Subject:From:Message-Id:Date; b=mpUx+IoCzt35Ov5PsVspLSL7JIZ/JuVrAKU8HYC9OYZm5qLWMY/HcP1dXj4wquWwbUxXBPu+TNj6b6Z/2V68Yy97Ok4WEF/tTAOeW3Mhez7P2ApGAoPflGyPUnBZOBmoVnWgWfM+1hxC8QfKGjU+2o2rA4NPcb4lK1dAEkoMRT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d5vtQRFm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d5vtQRFm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB864C113D0
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 09:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764926573;
	bh=K4RsgYD28WuqwyCO+sxXBa3tEY9jSWI2LpWV671CBrI=;
	h=To:Subject:From:Date:From;
	b=d5vtQRFmF6NQY3Kuc1Xt2Wy4+VZn6H69/iz8pWsSUjcSmSDgf3pYFSY70xA10x6Mg
	 Um7JTejchHQwlg0tPtC7yTBWMER9Hi5HHZEiMltRK+OckFPYi4oTskaaaBnZZocdv3
	 bCuLp2abrWy6PduRfydzA+x626f+ADM6TdxI0rNAWtQ2O1lnRKgJ9oJyXlhU1/laO0
	 Zj1qJTep4z/QZ3rdkEN+6iC0Qbg4gfAlzjzp2ZtxEzX+MZF+Rt9KgBEUH6fmPkHTvH
	 juqLKMIBR8FIunauh33OtRTWE54z+hZ2yM+orifk0WVpT0mbxVr9YzEm5GnjXlLdDE
	 xKe4gj/+C18vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99B3FD2F7CA
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 09:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176492657361.24773.6837955605213154327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8721e4f06964fac0c2f14be503528a415b26d8784fa8a3375005941aeb3721c
Date: Fri, 05 Dec 2025 09:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764926573

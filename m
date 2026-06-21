Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F5FC5B1EB
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 12:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782045994; cv=none; b=eHvQkvG+kGOEMRiMtc03xJOLou/IudkuAt23wHRa45UUFbslRizfCE7skizG+30Srm4Lfpqce5HkgSnQHeI/2zPHiGFut2vz1Qjy8PAzXdLYifScvI3JJ+M3AZABQWiu00VVAUY0DDh/YPYdxf3LDzoS56PzMl9j5SMeUY3ggf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782045994; c=relaxed/simple;
	bh=meDtQCdAyvbNTm5RDE8KC7piobFmLV98MqxYR4BunE4=;
	h=To:Subject:From:Message-Id:Date; b=BVnFgTL9MOQghQ3B6MU6nySiLXnbg5yUeh4PoLwhYMT+/WcFLLlVnphpn2k+Pmj5TgRBbS3QLJfqlIEpCgaxWoggpJlP2Hmr429pUkLoaKDS2Awgohdmp0gMEONu6NtbideiletOVODcPfSfAXH9gRJBofRsY1kHzLjuV4d+ge4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U/Q4+n5I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U/Q4+n5I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D687CC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 12:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782045993;
	bh=meDtQCdAyvbNTm5RDE8KC7piobFmLV98MqxYR4BunE4=;
	h=To:Subject:From:Date:From;
	b=U/Q4+n5Ibqsat3BsK93vl4d8RPh/G4AkreveVP+j0Z1xCdTcCuM9PjceJJ+4sAQVV
	 5cHDGphGhz63mPZz6nBx4RTOh43GJiEal9j6887Gn+q+DF7Ln2Fn4W4q2tZUtqy+rr
	 R2gGmvcn3J5Xvbh/JMnN0STOUpT4lfdjI+BcZdoXMFKHDR9t46fk8sUZy7bt6SxOyO
	 kbTDyc4lzi1oI5eDrBnyh8fA5wy/SkQ5k+7w3Sclmnvzz/82XFvlf6V+9iceQMSDUJ
	 Rzdbu0+gk4mvSEOaTTq5OUr5muluPW715vlysVOCvgoNYzo3AVj3yS1uZR30E0VWCG
	 EK8Nfp3dEj1vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5A5CCD98F0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 12:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178204599370.29844.3201094787607679543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f07f132eae50e94808e0ff8c34f985ee40ed29a3c9ac51e93ddf3eff181dab5
Date: Sun, 21 Jun 2026 12:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782045993

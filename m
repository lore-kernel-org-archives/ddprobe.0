Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2178923BF9F
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 18:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777140454; cv=none; b=P1/kVIx77aW2qnC4LQ3OA71P7jZxnG3g+83rPqyAwxFvt28XDwDkfLMFPXsCvuruRTbLK2r8hdQhpcRjIX4DWp9asTITRvFWINLHGxjbGEqZ9gqaUxFGBOXwjsL5hnR35xXAVEEx5FUv8dKecVyWm4ojhoQd9LlcpqyDUKg7Tzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777140454; c=relaxed/simple;
	bh=JB3+ldQmHnUvsxx7yKUbczEaJu0Z2NisRYbR/2YRHBg=;
	h=To:Subject:From:Message-Id:Date; b=GtTNk2V75VfGyTc6vdyDX+L9gSVMw/SGyWb4vCfnbkoaKJM5VapAkT8GWxxLmDcmbNmApvCRM/GDIe+g6qrT2L30VTIJM2LzEO/vPqjHUIwjhwsGcreSa0mtjN3HtcGcrNmj2CXIzYRVorXgYa25hwF0yaDUoAYB54WqNSU1vzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lp+JhBGt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lp+JhBGt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B93D8C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 18:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777140453;
	bh=JB3+ldQmHnUvsxx7yKUbczEaJu0Z2NisRYbR/2YRHBg=;
	h=To:Subject:From:Date:From;
	b=Lp+JhBGtOoQavqP4w313P0GIFUT5VBsrYCADrPLqcvnUPod/eRPFk4kWvWf4DDlOZ
	 EkEhVgGPOysBhIm7BR4Z3hn+9U865/4OrK+L+sEPrhIGy+TcymyM9V1nZXNbskuuR/
	 IfPp3L8AWmxx5WIdx350eR+JU3QdUkb/dMH5UjrrIPvio5HVAs+erYncqKsiBJA32X
	 iyHzJD5mItdNTcRl+RScHvFsOV5CE1lYE3giGlLcaN46d1K/FkPsqaz7fQz7ESpxom
	 K8e3wp0srUdVJ9PhVcDTDjp1U94QWAD6Asq+qiomqpmVSXxaC+Rvmqm+BCqQROxylg
	 oFQcyOBUUBL9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA97AFF8860
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 18:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177714045368.24801.14430233711965886222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: add2061619548e7ad87cb4518024067d7d62f8c1c0cbfc65b987c17d4a798d3d
Date: Sat, 25 Apr 2026 18:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777140453

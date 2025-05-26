Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FC597483
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748264395; cv=none; b=Xtbm/KZX0BnowYqwqYD9tb1r3WUgmJcrRAX8Sp7IFPDhE7k1hzZJD93oFmLscqH/E5iDHB2xmy/fpa5wKP0kqnAbjC3Vu3xLP0f+MLHVHnQB4Vrq0/7UaF2F760r3d8ebN81SWq0BlOTZAsfGrjsEDSRVvnmQr6tSP+WN2BhtdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748264395; c=relaxed/simple;
	bh=3DwxCtOGjmPZjqatzM4mQz74y+T42Ph0zgrdfZ8BAw0=;
	h=To:Subject:From:Message-Id:Date; b=UlDnrRznUmTdUa99V7msp4xgt0rY9njOjQOB8QfGl/JaFynRVTA5k4+f4JcQdF1bh0X50Rrl1VzGjABKEQ9n6LGrKZtxIv7JfLlJZ/qbAbAhdR+NeEYkw/E59BzJLotUsXt/WFS4z7J0VyMUR6/8cVMIf39NY7efiTVQmlwV9Og=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VDR79ttm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VDR79ttm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30ABC4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748264393;
	bh=3DwxCtOGjmPZjqatzM4mQz74y+T42Ph0zgrdfZ8BAw0=;
	h=To:Subject:From:Date:From;
	b=VDR79ttm6YUykLwia6CY07we7uM/L+o14Zkse+jFYFSNUbK4Sf5v53nSmam5g6CHE
	 Su2diV8yIX+qroArhpYn+LW/5zWl3PNS50Lo4YgfREJUBCYyPOFxZk/IVMAVdD5dCm
	 m+AgVgKti7tp9S4VIPfhJojBUl24Lu1BqHq9hEGV/SxUr6WJK4F7ux5sr3Dam45HDL
	 FsfQF44Zlqmj1cIqyF4lGjQHD7KcCStxIL3eWDfTQuLync9VokWgOImYX3lroHEIIl
	 /exFHWNHlLBuZbEwPW5yrbg7mm813MXMmYKdkPuHUWyw0krLjGkGi0BqZvVCuNRa2G
	 q3bZbqzgEA2Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B20C5AD49
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174826439358.27928.14921484010231995327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e49fce19ad4bb37fb3bc099b0a63c039c0b61bf8160d2f5f8e36e5399a1d45f5
Date: Mon, 26 May 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748264393

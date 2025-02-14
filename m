Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B5D921B8E1
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 07:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739519334; cv=none; b=RS6uuqc64s+SUhGEBgIvHxjaBgVO7CaR2EM0fE47mPGEpsk2BZSquZyGb2iyMgqaTUvxApdaT+Y6MY7WoGFwqzs5Oi4uBIPH/5IOltf1ZyHGFgzCM+yzkM2Yq6CxYXkTaox0c48vGGlRuAhB/a7najY2tc5J3rw2SQYokD1M6L8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739519334; c=relaxed/simple;
	bh=7Cp0GV/irwqEr2dtxkc9E/3FOgZA6Ygcp265TRsea9k=;
	h=To:Subject:From:Message-Id:Date; b=i1pfrvOf2FOimM3znMy9duzDqdr9yMoreH6jGENS9KL1z30Dwc6OpqO/7uq6TjUdphnPoeQrlt3jhEUlJzfdOZmx/bcuHXZJD0lnO8pXfQmpsMVjt9kcox00O9l2iWtpd+jGTHZ6p4dvY4ggBm16/p+872W8SHEan35pSvopBXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U6Cn0RnF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U6Cn0RnF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D44C4CED1
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 07:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739519333;
	bh=7Cp0GV/irwqEr2dtxkc9E/3FOgZA6Ygcp265TRsea9k=;
	h=To:Subject:From:Date:From;
	b=U6Cn0RnF6jOsVYM1SNwAattNZciE/pV2GcgqgmI1GkDJsvTKGH4xYN2/mmDlFzsNh
	 rqglvuk/98uqY5Qu1Q+El9Hk3y1h6SxD6r8sSHO38FRCkLaWgyUGHjlS2E2atwJfqz
	 Gsx/ngnVqd59tfbQOAb8bs5S60P9IExF5GQIHj5SBHdOYL5ekmhkwQKoZVfOl9yIpF
	 ry8WoiJR/ImB6GIMYO5/NWu5F7cq0z3wYw/P/MoIeWjtLQ95rrUYXP4Ec1wrMWmSwZ
	 bTsUFxAoIG5aUR2VGsE/l8xtHDRQT2QjcDlXknRfRKq8H17LI9twph02YHw5y6a+wL
	 sb7bHefM681dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93197C021A4
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 07:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173951933359.7943.10550003164921090934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b625bed895e31b004596c7c2f9892132475fa4e053e92fcef21c22869784be3
Date: Fri, 14 Feb 2025 07:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739519333

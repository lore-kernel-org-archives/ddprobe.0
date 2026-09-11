Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 479DA1A3160
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789134034; cv=none; b=Xc1jS2gk9Vd9ZB2837tyX7CcjGZHLj+ahCJl1e2DOwFxl4RHBcJElzDzgAU3hxip1+4oGdJzUGkUIcmK40+YC+jjRtYlXLKQ6xFF4c+cfQm9/HGa1+tEoF88eNRoCtaseFnKnu6EyYpVHav1KnOQTK6UQZKbEX9OG1yaJpitkoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789134034; c=relaxed/simple;
	bh=qECROctDmFPoiKwey+h9HQt1xD3G4HKiBwZbwMHc3LA=;
	h=To:Subject:From:Message-Id:Date; b=n33Hq2IpEhkmDPggr196mdmQ5YlSo9sNlTSJYcs5VrxCQuXwD42WXN3VFNxg1T6JpWPD6NZTZbaIijNy5WgV0XHHwn1BfG6imW1t1BM2eWTpMTveKGA2x3Qxy1rTHq3tdcYcx+9SEadZHjYfe/RuoCIdZZsa7yIofan9jN2l3T4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fg3xc/0p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fg3xc/0p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8826C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789134033;
	bh=qECROctDmFPoiKwey+h9HQt1xD3G4HKiBwZbwMHc3LA=;
	h=To:Subject:From:Date:From;
	b=Fg3xc/0p8jba/+vShe9df4pCaW0ZEAvRzue/+lBNFQ/0gtZb6y8LOz0akwBaNocL8
	 /CncXS3h9C4PIkV3Xjl8+vH+yGAHC7RymvHgwnbnyp0NjBDIc/wyyJEawPwAI5Ispi
	 I25pWjlCG7PRbpaHjQTT9/HUGtVok+qIAl5cdi136sq0azPNP9aIZhAQS4HGM2v/tw
	 PG4ZgIMD91oh7SfiZW5I9eh1983ELXj6Jdz9B4a5zsfVq4XwYC9Ibszd4U0KJRY3p8
	 h4O1TJv2a1OymswOkoyonFJQLAMOZLMd8StxxXS2aLh/0EmXyNDYCk8jB1TvziK29W
	 ra5NxvlQILG/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4154C88E4D
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178913403369.10277.6926198800560318453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76b393261f09a442bdc31163fcab21955772ed5986891b34ea1804c24b0b9500
Date: Fri, 11 Sep 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789134033

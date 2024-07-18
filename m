Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51A68433BB
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721326554; cv=none; b=ksT3ZNPop3XXjVAE2FHD0N/zAtMTbo9MwS35i8+MBDIrxMMcUqSx5vmGNP19KElkq1kFt0NeWy78I9DkG8BYL7N6mJ+eSDspd/EBj9K78h1we1sGnlXkfT9rcW0ARLUjfCP2AEiqLlrQnBGBkgE3wulXbw1vYcenixUVBQs4mcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721326554; c=relaxed/simple;
	bh=LJ68s/1DpYQHUbTkHMlVmNVhV5NhduB7U0iCOtCrZzE=;
	h=To:Subject:From:Message-Id:Date; b=RPC3jXsYrGy8vC2x15N/G+z/n/ebGxUmyc2u30CKHo6UGY1twAffeSNOf+AaBGWdmLX/wumtf6OXFSYLw0+OiZ5t2y8PFKOvM8the9nso0iPZph0qzrqXFx8J+do5SNQJOb49WMOUrpKbqqbgppOD5Ybi846bvSi75WvOpgAvA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D0ysfW0W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D0ysfW0W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B82E2C116B1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721326553;
	bh=LJ68s/1DpYQHUbTkHMlVmNVhV5NhduB7U0iCOtCrZzE=;
	h=To:Subject:From:Date:From;
	b=D0ysfW0WRyFDWWQwKAJa35gJQOvf2h9IGGBsG5vyOjXjQ/C5V94v3ZtRiOiyBctWZ
	 LkEOPdjCjE8rRasYl1ylWysVVPeV84Gni7Q7kzuJm0S0SB79XdhKDHCUQEKvN77AJl
	 ytpTuzcXcyjn6j4iE5OA0YSSgN9AZmlQv1M6xrVDySQ3kHiXKxrR9TE1V7kOacnZei
	 3R9So0DeqNurXtLeZ3D/WRjLNNPf3w7aMQZFvcc154yHoRum3nwIUn2qaCk6So9wPw
	 +DVZCt5snZN72RqoAtBFqrhLpSJq9aA+O+H6YhFCvfDNNlZgV5Io/Nffmnjqf+oxDf
	 wgueCn4iSLxBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EDBCC3DA61
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172132655361.9431.16267291375007637646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da2901596092c97f567bcb0066853fb3785b244f6340d6d218943a614e75377b
Date: Thu, 18 Jul 2024 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721326553

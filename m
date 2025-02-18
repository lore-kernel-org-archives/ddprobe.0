Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 548F014A09E
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 21:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739914134; cv=none; b=n+vp+w/VsrC3xMY3p8dzAP8EuorB94GHuAa2MtDOLE/fbDX6rJ2aYPsTSVlLEVMCZHbwbUl/yHgAWQd7YAi8VQ/csKM3bIlLIdPIBTfehzYZq/WdygFKXxH/4RJra73IMipYCOeVzvzms1hVOP6AWpP4ar3sP7OeDtirINjTL90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739914134; c=relaxed/simple;
	bh=MBR8ooLJ+pOdPiKGPwMOLgbEJw38Pf7FwCH2T2DbvjQ=;
	h=To:Subject:From:Message-Id:Date; b=cQIgc2cu/mafgP58wOAkHq5owvJjNbKkrf+1K2gRcCA2xEO6fCJIAvvWxwR8kHYj8osfaYBoiDQQ1qqKTGTT28oxB1L3B7roiIZoEFOuuLYD84J8qlhieiTHr0tYMjjP2zOrbE5VAfrkVpPaWHnksoUOqTrL6YxdwOEJh+fgXE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fC1DEoIi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fC1DEoIi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C393DC4CEE2
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 21:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739914133;
	bh=MBR8ooLJ+pOdPiKGPwMOLgbEJw38Pf7FwCH2T2DbvjQ=;
	h=To:Subject:From:Date:From;
	b=fC1DEoIiPESyXl21yhs+RJS4pNPXisXoxI8RBRyO+79SSUGU/+RoGjv8NnJ7/KCG7
	 ZcbUfe1NoPujo0dPTk+Nv0aT3cNkLwX7Y+vo5Hx4cvVwt5nuuqGBhh+N78mOfpE6qT
	 /09N03TEm7dBolqCgBU6HIh9lMWWi2W1sMzmULEMTP3JTOZMZ0rQiAqQ206sc9u3+h
	 M6+IJUBHv60vEoqN9Al0sEG+FjCQ8ISG33t3yCIRmW7T9pYIxtK0yF3jlIgHmiH7Hv
	 J3I4wuiSvBh8vpDcWlvp1AWd7Fit9L/AfFhf7YZcFcrJFd5gGV8KGD1XqesDmQbH3Y
	 PeO2101io9AzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A89E3C021AA
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 21:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173991413367.3682.10778121524631510606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6caf728e17dfdaf9babd2e80ed320315dbd94eb01fc2853cc99bab716fc56620
Date: Tue, 18 Feb 2025 21:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739914133

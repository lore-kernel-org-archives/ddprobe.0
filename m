Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 399FA1F4613
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 23:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770938094; cv=none; b=ZjYi0dFfmduHocMYlVNuD0kZjt1EpqWNhKDqZ4aqDgGRKwOSB6QO0wCivnyEE9Gfh8NdI5dpd4eSZkYGCkgfdBqriwHMxjIIJF0p6lb++I9gaCafe/JQ2l54427LoOV/u3ubGrl0jKOhZnYOxqXfvpCp7N22ljAb874ah5VJLnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770938094; c=relaxed/simple;
	bh=aHyy4d5hoTCsKnKNJKKO4ND4dxc5YPLrrcYxdQxRJAg=;
	h=To:Subject:From:Message-Id:Date; b=VcsFzLcLvdcabI2VyU7IPV1IC9FpBGhjfz8//VY5RqTRK+VwewwphjOI5A1EnvWHw1j71C3ja5asgTivVxyh1uzMuAVd8U5XbwMMvAw+n5k2RP2IrZ9/VhYCdNN1OTtQ/3mjpRpGKqHnkDv48OHWxUIgGb7suQJzEmtRRj3aM9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W69V8cIH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W69V8cIH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B92E3C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 23:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770938093;
	bh=aHyy4d5hoTCsKnKNJKKO4ND4dxc5YPLrrcYxdQxRJAg=;
	h=To:Subject:From:Date:From;
	b=W69V8cIHn8/4jOT6bfAWDgiUUYM+qA/ULWJ/DKl++WFctsH+UaagXODbl761gbIDL
	 wrc4j3w9yiYybgoBT8QwLe4qPodD5EVhGsc3s+miDcKI6VLCvkfZUu8YNin3DAN7qX
	 9Jvr9gfRfeSl0uOR8oz9FDgtHhPZjvaFo863ugPJlCMpZ5+O+/yAnWt84MAwxx3K3e
	 iCpofFlN2uztsUx8SSfBLjOQPKcZle5icohruIAriAJ7RZW/rDscPgFPvnSISJ990F
	 JWbU9H5MgoqUGz/4plDevvOiiBfsLwL3YM2CuV2ZwGzO1IbtozgYXwsc2bL46Ke6W7
	 lO0XxyReD97aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F888EEA86E
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 23:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177093809362.23381.11657141674535908077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2320062b069837679e7b7b15f85b67febdbe782bcb85f1daf99c2c6f234b8a31
Date: Thu, 12 Feb 2026 23:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770938093

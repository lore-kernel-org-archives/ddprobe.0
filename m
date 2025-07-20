Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 164751A23B6
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753055994; cv=none; b=DwUSeYqzaJbdXRGRzbd5AIWDZN3mJnknp772wL9KWoTKwWApZmGi9uThh8LiFTIZILfJZjv2gktPEV3VSquq0N4kNiufFE9Lm2Eb9bqcw9530/zQVP8wdYOx+8RRvjOp55pA1DyP9TkHU1gWECICerJZ1X6FbyY09wGoMekr5YM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753055994; c=relaxed/simple;
	bh=eCZZFOpiBY3Hc5Y4Or017upECVIT6tzRmiP/CBM1Y14=;
	h=To:Subject:From:Message-Id:Date; b=VgbOU3xTKvLkdwMIVSzE3UdaKpiJ5nw1n0+lH/ym5CC9dUYiU4O2OBnZXfgsDSGMYRgLz7+9erLekaCfe0Qb5XjbNM0L2uCLS1+7R0t6BrLtd8by7nIGrXkOtDinP+Ax/Lxlta2dNJX/UYt718xxuD6d2BA4XjeRqS+YRFqjzb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VqefwBdw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VqefwBdw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4246C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753055993;
	bh=eCZZFOpiBY3Hc5Y4Or017upECVIT6tzRmiP/CBM1Y14=;
	h=To:Subject:From:Date:From;
	b=VqefwBdwafr2F8mTOsHWjAKq+yvZgNkcAv5Lx2cG9hjLaLp9GpbWFk33gerDPnENA
	 So+1LkhfaE4sM5NfwI0HMqmLiDDGtcFrLuTf/1s+W7UlbcthnjQ5zDaAs+5B66C0qT
	 02S0sBJnk+BdQZnOYBHyfFATeqnuvctQqcLU3hJvZVlJ29jhS7I4sPoU2ZWIqRnKZ7
	 dzQSiTQhoEdEA8Az/8BfQ9xbt+Cpm4SY6CdERCKaiKhN6R3Fnue70X8WC6k8nD9Jxi
	 QNnooRG3B4JoWt8b5GkaSg+QnHmZb3yrZEKb7uXZr9MuHvuYC1RRoWAio7Gur2pl7/
	 +Lz1Wtn8rlzwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900ACC83F22
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175305599358.2402.10695292378688784388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9eb22c6a5665fab24bd2c9d762dfdda493cead005a7e34088eb07e9075ba1d55
Date: Sun, 20 Jul 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753055993

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6D232472A6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 13:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772113494; cv=none; b=ZIy5vt0p4y0EGgJJ08b14f5lpHfObkCTsCX+ubnueJoq0Q7yafBWt9+fc2pHNl/M0pz3HYlykEPGccykT0/pmvlV3m5B8ufguXg5FxZSnTNNEJr1Uzl+xswax+uu2KCcjfgXSahCMCFXQ68qyi3Dau+ELp9/rlIAsGRRjr6DkAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772113494; c=relaxed/simple;
	bh=7A1Wp4kH8AGyBvGNApR6M+sJCjw1zDSCX+RhAQQA8Ec=;
	h=To:Subject:From:Message-Id:Date; b=LYmrj/bmTsa0nJrbUyvj9t4IlKbE7xOKfcEwlaebnWIvINGkLm6rsE0A8ShFgkb1IB62D64Q6wNkauqz7qcwHxpPssMsKs5Stu1vfH6sGcDslDfOJ/1f5rhA1es9mE8H8E4myWsfux9Hs15naQzpLVjzjjZnIQlvx8XZG8TEp+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kgfk8+vJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kgfk8+vJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD6D8C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 13:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772113493;
	bh=7A1Wp4kH8AGyBvGNApR6M+sJCjw1zDSCX+RhAQQA8Ec=;
	h=To:Subject:From:Date:From;
	b=kgfk8+vJtA1grT4gmw70KMgTMsyL2vscJovLYhoMSk5FGFrcgQk98lP6SzsRVx4Ly
	 FaPBQsXXZg4+GvM0qe+zq73q2TfpBlcmZ6iMTdg4/U5ZNb3H3KwDFj/0mg36T4uWeH
	 2OHvQh0yhvl7xk6lms0lJfDelLQ/6AQVaQaqf+HelduWlkKoUV6VcqFid4Abc14XAA
	 HbLmtpdhXLjZYCWwZsrIDgXUUvmQQq/8sDptENZp1PD9kirUu1WNmMNaAJ/Np9qigw
	 G+G4lqRAV9qf0HMvgYFUcduQ5mnoa0wOqidWbPmpX6VPIdr6elQVYQe7QZIcubeVqh
	 /vFI/BVTlBzMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B33FCE082
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 13:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177211349361.26426.1475693738437532350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9d92fc2b4645ebf4697ae7ae1f7944452ae46cfcea64c0dd05ec84787b2e667
Date: Thu, 26 Feb 2026 13:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772113493

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50DA61DE2D8
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755146394; cv=none; b=QRP5ODOs9Vm+pHdnDJ2p+tkLRlX9g0zH9AfF9klUhihCxIwOBzW652e1v4DpnAoBVQTdfS2duIb6e/QxF1aXuk3YpG+wwxZ9FVvQCyGq8NR9dFc2vcEFMzxvQAa6rTN+GMW61diZl+V7MWcYEi8KPIwXmCe2n40Z6KzSEo7d+fM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755146394; c=relaxed/simple;
	bh=ZYwJLImMbFsy/KZm+fJxVH117JgmFU1yQcRIS0Pql54=;
	h=To:Subject:From:Message-Id:Date; b=pOx8PMbBVWTz5bfk5yGFueGgW5tDaKr2SsyUcYfyusPAlm7WheXq9iNbLc2B67YQ5TrUXMU/WrMETtSV+UhYZ2r2wXbAXGML7Wh87+IcBNkMGeVNgYERquz48wSUDLRnqGHrcAW9tloOSe6WLirj/Tsu3Sh/Tqmi7k+UIaJ7pBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tytRutqO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tytRutqO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4971C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755146393;
	bh=ZYwJLImMbFsy/KZm+fJxVH117JgmFU1yQcRIS0Pql54=;
	h=To:Subject:From:Date:From;
	b=tytRutqOUHVeyo9dMZJCQgJxVA904CB3oIGuJat9U5nPaJp0oZfaERHugy67w7u66
	 h759DfED8svEjyKu1GaOa5T9zqE9G/Zqtawuv7STGgmcGtHf1v15Qs7IqCrDyV90l0
	 pK6UVS1xpOHS+kWjLKmyKpgF9lzM+fvv7SCbsjt8Zz+bq1ED0Yic++dMpg+hYLpZ7E
	 DQNc7Y+bRHSqCCxnW7OBcziklJzq7Te0E8+Rq9P1M37rGqT7/zE0ypaNh38hpjsESU
	 dOSUtg3Y+MUovGLbfhGh4nW3MeNitvQGrNIFxhic9nphKPm6/ggozkJV0jaaN/FJB7
	 25Wf7nypGUYCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AF1CA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175514639357.14884.3416643768039632337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ff76ab8afcaf5977826c266fd520f8ae86bf61d94f2fdeb5706cffe45e190cc
Date: Thu, 14 Aug 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755146393

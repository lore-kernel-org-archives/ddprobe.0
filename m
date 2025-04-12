Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41B8418CC13
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744449594; cv=none; b=dNWqk86XsDbmMsvfIuxMWXA18dfb/h6DkoUxD6WXkSzG+6CuXkls4/LjETdFTC4iGaJ7ytr5lFlHPVHfIL/8GX2seJmkOhTkuZvL1Qx9PxaZtIqOtQ2gp1dDrDZiPnRfIIpj7PLd2xx7DB48TY8fNVhirWg6du3XJ2uYVr8m6yM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744449594; c=relaxed/simple;
	bh=KAcDE+CsT8VPMK2/AT5e6hiTe90FFmebnwJPbBoG33E=;
	h=To:Subject:From:Message-Id:Date; b=OqDXPT6tITfte8Lz6lbjDcuz2sU4cjsNbdWZb7fmnwvQNOG2HAD1+A40YEyecgbgIHv0xsGPONLicrpMm5jVUO/gobt+B1fUhdG/3gom3bVH2OyB5TdB+Sy0QNVgqvTq7GtPxQfGJUYJFNVNZxH0lXBr3y4O0upNfQD26h/YCDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iaZnPNsG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iaZnPNsG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5577C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744449593;
	bh=KAcDE+CsT8VPMK2/AT5e6hiTe90FFmebnwJPbBoG33E=;
	h=To:Subject:From:Date:From;
	b=iaZnPNsG7L798FOi7H73IrCsGqN/uODNZ7cN5QsvVLHj8m2bHYlaeGIfBIstv4+4s
	 AaB47j5LSS8Apiy3XDfuYBPX6rX7R3Gv3pcfosW/gBTLg+S57zY0zDeLPCYWEXNBh4
	 PqXNBJqddMikVc8zZM++SnH7DoX7DTG6VBFET3MSeUqTneu4sGQFIjJl7z89XTNU6x
	 4WvJbZzQCCu9OM9uY/2/j2Pm45tW/ZEy09W1z7n5qyAT0b9LdyO3syg28S0ed0qZZQ
	 VLXLBVFF9BduWL8PsPgA9QhUpCJ9DSeQPtYU0cLYujkzDj1iN/tvljegsaRcQAOKHR
	 izw8Cjes2OUNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CF30C369B1
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174444959362.24146.16481510615069639718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 507295587293d2a85033ebef6a2ea0b969d8ed3b063afdb5364f1bdff04aa766
Date: Sat, 12 Apr 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744449593

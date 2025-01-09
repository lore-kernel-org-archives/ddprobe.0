Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12C07216604
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736424354; cv=none; b=joD3wTJxUzPSn+ZvjN0hQS+03YhHsLDo9D5w1pVICDHcwvl/16zymtAYCmfIDoc0tOQgQH+J4uVrBEfOI5csRk4lr8VCELz8ce/ddPFKjg8N44cGOvIxUQO2OLt+WBXEWQT7a9iusilVMHiwLR6RHP3Yh4VZEZiwpkpmPauzo3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736424354; c=relaxed/simple;
	bh=ICtGYePgDAjGc7NlxDh+8qGuZ4Qg2XVH2otUIoXXF5w=;
	h=To:Subject:From:Message-Id:Date; b=rvX9rpx8x5YwVUHdA1zvXCBdU74xLT35RFXiQNDUtVXARMKp0tr/p7pmKNZhqFGDZ422PYnV0CVMmEuL6BhUNlFBTiGN1NItDw0tLpAWV2Y8Q1/TgXqdInJAa6GreTYOVKGGTyg9nIG4R3v+rMuPIL9WoI0Az/qTTg9zPf79iXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oXwxotih; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oXwxotih"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E2FC4CED2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736424353;
	bh=ICtGYePgDAjGc7NlxDh+8qGuZ4Qg2XVH2otUIoXXF5w=;
	h=To:Subject:From:Date:From;
	b=oXwxotihO5SON5zfL1Z67t8py5BSUhxNAHkly5PmeEPCGGstJ6W9gWYSq7M6fEesW
	 HIeQd1QKM6LHVmO9uOpn09mC7bYosBazZ0dmBgDL/aRVHlhMEqT/qBhOcF+qjPR8i0
	 ojNDG+A3I+zatWsioYgrr4Wq1YYfroK2l65UJk38cyp93SGKEDrLudrxebXaB8wDQZ
	 78fzf0V1TOSn/nZNsrRcNGxznwKsmUmMCwFCYMqJ7Y0KNErt5SjK/xZMGaUAO4MJLT
	 kZ4bRGXhahcv5RW3td8hqsu84VJXkavhVtNn1a2hYB0I8Tf+Bed3AKuePSod04IIGf
	 h7Ek6KICkbN8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98448E77199
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173642435361.14799.3364218018129167192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45f5cc1fbbbd6428da641bb2fda56de25054fb9441adea935da8a311cf904edb
Date: Thu, 09 Jan 2025 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736424353

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23B79224AF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 04:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764391374; cv=none; b=BciaI2M2Vz6sB8U8deuey2ULM9h+MogugefPFXa3MG/qFNfcgb022W2obCNbDIqYkh0V/T5JH9b6EGiI8ofLz43wbcRIA6rv2wOWUcXG9ujhIdChPQkcx7cK+Cjt/eOE2r21o/vlYPfbgQQVUXAaq2+xgdSl01ugRBCoVZmxZdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764391374; c=relaxed/simple;
	bh=6p3XP+4T0ETpIMKdpZMnxldWPcH3IC8aGs7wAp6ZSts=;
	h=To:Subject:From:Message-Id:Date; b=NcQ7C+eiFNmbbyaJbZ3zq8wojsH04sCniDyPbDVxOl3SG3ZaERk6McNLP3d3DwFeqCGqU46XKvOd7Mr4JUwJrxGjANuLZ8TImJGIstEv/98XqOTumfRN2mM/9SIm4x9XpOa6wvfWrbtjmEoEvP/drS7eDpEu0Pq3JnOnqDCJz54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VUh2GK8w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VUh2GK8w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA710C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 04:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764391373;
	bh=6p3XP+4T0ETpIMKdpZMnxldWPcH3IC8aGs7wAp6ZSts=;
	h=To:Subject:From:Date:From;
	b=VUh2GK8wVowpcTqX53k6XZDSC5qbQVxXfdJFuOioKvcmVpFPRmOHjTGA/zhsMEL//
	 lvUcbxFbibL1Bpcy1eYiA/aQC8DYWbrT0ny3Kkf5Vqo6T9GGL5j9d9/nxNkNzJBgOG
	 4TqQm9zdT5YWEqWyiBTGxVwoGLgAKiFiiBY3I4eDQiDmHIi0N+9w3MjEFOQhtZTvEM
	 mNBuDyiTpKX/jtM9Rj9Rvr1iHz2yrAU6OVQKHoerPnpwRbc0Ooxx9sSj4O6lJrnTF4
	 DsDmoJAOiUXjo489ziDE6vnfIUcz5yi1JiQycFnh5C4BiJx5TgNIqsbrbQjdZPEdO7
	 b4RSq61ZG6p3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93862CFD2F6
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 04:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176439137358.7473.589548104101047010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a11fba0a14d42169c7559a04ec169c5b8842f6141711ba98bd0e4649af72463
Date: Sat, 29 Nov 2025 04:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764391373

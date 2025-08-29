Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1825B42065
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756461594; cv=none; b=MTJtulzec1ea8bW6yRKr5awaR8Wc0zzFjFzBkIUxMoXsydjhYuFBv9BDgVMjG7+V5ElsafkhNAdAW1M/mswaG2XKs/GTZcOfUVl1KLx2sFBeqZ/quchvY9y6cB7MVkPzhZQYf/NZYSWGg6t5YBgLVJn4F+cyvPNS+eE4dO9/m00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756461594; c=relaxed/simple;
	bh=vPEA57jBCnJobIDA12c40NwpZdkPjVQa4iLHBk7M6JE=;
	h=To:Subject:From:Message-Id:Date; b=tGVc3kMSZeuO8pZruwmPcyUKFBnrNNhmqgtcUG3K4Cj6nZ0P1LJ/CBiklxFgCGR36WAVPxU0M36D0XG47J58bHNkx8Yuo8PSkRiupX7imssJqZuTAPF87+Nx6e4DnUp3SlaGJJTdFKwg8GZx0h1hPuSVQ3vfv4HWKUD+UpPzUmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AapZdqI1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AapZdqI1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99E9CC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756461593;
	bh=vPEA57jBCnJobIDA12c40NwpZdkPjVQa4iLHBk7M6JE=;
	h=To:Subject:From:Date:From;
	b=AapZdqI18kB+Q1TatyTIsJr9BGZ/OMBv6SAqSadHfrhBqLrD2cJGbwBIbaCTqVD3h
	 ll1JNrcPLo9NAOjtYlVXrY60KC2GCzEoMieCewX03lVXibBDtxImH135CJuZmp0NKy
	 VZaP0S7k4ZqXBCk3y03p0wZ9wA+EpoLKnphIfMRGjVRjap5L1X/OAqJdTNFKq/Snal
	 IWZ3VVn/m6fbA5UvKUZKMTSliWAZkhkYxfwVWBIGW5teNnuEVEI/wk3jSqAyrtWFLO
	 RxazC94eUjLwMsj7xlMLp6pi0AO4WwQZ5WsNr9o/+X2fEsa+eoDg1scgtjVqkO5psm
	 oRiN4RZJ2aMqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFB3CA0FF9
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175646159357.26031.13675211211990099365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d8eef02143712ac52f36515843b56ea54629cd75ca470212d8d3dea52837fb8
Date: Fri, 29 Aug 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756461593

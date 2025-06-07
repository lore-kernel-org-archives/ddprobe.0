Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F2E71D63E1
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749335394; cv=none; b=sxeYfQ7LLPNyCz4KgWtlEU1QXtsThcqozGNp6ffDtBXiY042beNItZKfDuyjzUoqVA7ibPxad7JmjYzqdqpiGpL04jVw/kmataXt2V80alB61iYv6VFoxiS/tKgB+wx6Ia1kkIH14sOn0/m1VipBz76l7zRvvQP00f4ESWYIqiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749335394; c=relaxed/simple;
	bh=vVVJ2glNFSrR5GMa0wMmZ5Py6I1Rtk4Euy6GzIKVBvE=;
	h=To:Subject:From:Message-Id:Date; b=ZAvngfJBaHNB1NQzk5YTBY9mM6ED9a98d7JdxFOL+/QLdzTv0OSaFPC4C0g68YntEBYaQuqLEFXYaapAmCYJ2JlLcWesRRACqub5FwGBkiMrdS1c3RiPOxAi7FZGgNnRLAMwQcAL75FCNuuQgESpRf2p+ySxPve8hSkGIYtmPEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z1r4owfS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z1r4owfS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28EBC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749335393;
	bh=vVVJ2glNFSrR5GMa0wMmZ5Py6I1Rtk4Euy6GzIKVBvE=;
	h=To:Subject:From:Date:From;
	b=Z1r4owfS0T7iHGl8r85zztMH2IZAjqPtYtdNACb48cI5v1ByrABvhYiWX+eregkat
	 JUlF9fw5P6pX6VOUIii1lIRIbvPBbNQX+LZ3E06tkuMVATjKoLVb/aNVS4zC0/zneo
	 yDt6i7bcAnlZeR42P1Gr4+WUzhCZh1YlKRPdjOMK+MB6/40qVBi4ynY0ycO4tJLAVH
	 aKO3a0NmeYSkxY3s+AkHrcYEl1ZPkbcXblb6X2c8JtKQ9HQ8nchG6WhsasC05puudm
	 8TMlQeKwymDoYuOUOzvlQUsmqPvOzCn9Sn9shONNhmg3b0j7HlxQ+RtOGODVJCUag9
	 giH98NvDOZMBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7B1C61CE7
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174933539357.488.3873385337709510425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff67ad5d2d25d94a2b28d046cba86764d957a97e654a2155e64617044a1e5e7b
Date: Sat, 07 Jun 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749335393

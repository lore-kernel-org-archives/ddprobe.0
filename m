Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9DCA29992A
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763094593; cv=none; b=Asd8uNjGW+f+caxZRy7tVYBQVCkFuvOafyPre6uhqRi+SEDPDq1mJMbRioeXMD8Dtwe9i7Ks6RxTA6/Gh2DjYiah7LmNd+cgzcPtjCVCTKApGl2blYHDEVCmaOHvalQESItzGSVyU1MK4Fcwt+YDVM4Lk3TiXHljBDjZ45OWigU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763094593; c=relaxed/simple;
	bh=rkWopIcOwjR4S2OeeK+jp0tsXn2gb4UBi7Ywz/CLboU=;
	h=To:Subject:From:Message-Id:Date; b=nlVX44gUCECnQPLVnC6gXU7PtGRRc570Ys1bGt/jKA60JjxPPZtMNPuj6ZPhTYI2o5NOkHExyyd3Zesluct268XKZI+WU1Xwvg3m5kmShKVHdJ0ybYa1xdg9yBsyiinKIHeSn81Slqa7VBOMnhd7mqw7aujk1WTGrBmieK4GNKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MuWU7VRm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MuWU7VRm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE94C4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763094593;
	bh=rkWopIcOwjR4S2OeeK+jp0tsXn2gb4UBi7Ywz/CLboU=;
	h=To:Subject:From:Date:From;
	b=MuWU7VRmq++NakBCNzv0GXMcTR4X+Ienzl6bxFbqa1tiWY3Q3VysAHiDNIIH6wFU2
	 VJAiH3JCRGHUbVUXHA1rBO/wre7Sr4EpWkx7Gyl+uNkFeIk/nKWdDNBZI/iLOZzXu8
	 Cmvpm/MGHvNzdeXnjgP6Yi6x4yn5RyL5qi2NVwO+lYKhImD+1LiMLSUe8C/Br8UXi+
	 3CqdO/ZhcHYWDiOmiN4tLd7VSRyO6QCbRFr0aK349Jo96eE7WbGuSNeARB17Uc1DiL
	 FnzfKPzqZP1PTpkbALkaucFVY0Q0u799CO/jyGvn8ZRNoo+OKom5ZlDzEq6KLX+unR
	 bKMembiMH9EwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9098ACD4F49
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176309459358.30065.1641531318537847731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92b5d6717789591a164c72266100065db33ef82af18f3b66bf695dd6deefd700
Date: Fri, 14 Nov 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763094593

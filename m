Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56E171527AC
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737427554; cv=none; b=IYb5wqk3y//JOKZUGv8yF08Z4nLDnRlYaS2Tk7xcaK7n0Qtauub5dTS2ioKhCuJ5DxiOppv/KqcMvq86iw6MM9l7240lr9tBNuk/NUeCY/jYsk+C6LLBMpzpIri2Bnu2bLtaPr6jToj6r4c3TyLnBbp22X4l3Am1BeRvVAk0brE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737427554; c=relaxed/simple;
	bh=603i+g1E2/ZwWl72RbOFbPYb/1YlJbP5imlLNnflGPA=;
	h=To:Subject:From:Message-Id:Date; b=qCRvQJtJPAEbPdMPeI7GOZBtrHDqkO/bm+f8MmQ/cn8a+D3pVs5ASE26uJP5KVMgAT+sXydL6m7pAGMF7ClkS19G3JghYkaeUI1AuwUSkTINQ6R3wMShbjdGDHNHI5gSs3ZNuPOr4xwVl+01QeRI2p4DYFkXEKxbsZW6F9r1KTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kO1+Qbvc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kO1+Qbvc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC2EC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737427553;
	bh=603i+g1E2/ZwWl72RbOFbPYb/1YlJbP5imlLNnflGPA=;
	h=To:Subject:From:Date:From;
	b=kO1+QbvcJrRfzfRh1Gwg3g/QdGd4jo7TzrO6VU5IU5rIbF7Y5+KEWEEh5+PZvKxSa
	 UQpRO2mr2DSBWHn3yl1bVsNq69vhRp0F5OBadLUCx05+IyfWBwuPKR4Mi3/CwiZcH8
	 KSXcTT7cRQNC3dz5U4w6G1AsZ+0XhiuGlV55ONVXsDRGP5496Yf6neuXyKQvxSeyu4
	 ZRBS01mcV/20HEUVvnR3m4N86Jetwl2Jvg1IKKyhrp2BG6u/RvOXyxYlX+x10lEZG7
	 BFyvpggrcAH8ZwdIiwVXkxFpD5Rth7AE2dr94d6a0Vke4hcFJGd1WGtEQZ2jLnhHIn
	 pxb8bNRLmrIIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9524EC02181
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173742755360.25741.8766229224406728170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2548b871c8c2531073b3ebf6808c795b57c9ba876fccbe960924a515a284155
Date: Tue, 21 Jan 2025 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737427553

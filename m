Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AFF7346ADA
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786278034; cv=none; b=QeDL3tzMpoD3NVw88k9SZziWW5QZJ1lrCwf9quZkTdP4hUxy7g64JtzjUX/UZd6OdoyBeH0peuwTvB03lRXrWNHbdX5iadSoVCRuBQEvfI4yqMJEmNTyiys18Wol8G2f+RiOVBMD79hlUySGOb+nxDy9/sI73gzG6AODuFpi3xc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786278034; c=relaxed/simple;
	bh=7GEjW1lZUXCCAASW6CM6CIW+KzTwHSQvBLs/PLNyzOo=;
	h=To:Subject:From:Message-Id:Date; b=Ii8ILszl4f3YHJXLA2FZ6oixs46dEkaRaX2SvHvtDntDMoidU2pQOJVLiIBZEZr4DeGStM6xPrjLbxTROhVgsmTr/EmH02PrpPRYzVi2JfgyqbhQYXdwRCl0ALWZ1Au8FiI8IAq6E7gUj+AEEeS90wNJRJGV+ZVgeOsorvzD2+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qSJX3ULN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qSJX3ULN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9D02C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786278033;
	bh=7GEjW1lZUXCCAASW6CM6CIW+KzTwHSQvBLs/PLNyzOo=;
	h=To:Subject:From:Date:From;
	b=qSJX3ULNKdxkS+94bqhbSco+vIXK1GEDIwSRkBesO6U7rXFvYJvv3BBaG4Vba/kwb
	 SSA3r/ORKwTNcOqi4m2+AiHUWYkXNXh3IhWjCeGspgr74R/Aaf4LZowH4KNcopMbRI
	 cz+An8Wm+0s9+cUVnUKjzAagnY6H9SrSrw2btf0FBvbmaiCsHpealM2zgyDAfkMqH3
	 qqObCgTtsSsYPPPZrl4KZCWdCdpaaiw+kbqIevY4XpONvYfIY6JsvtlgEbmGIYsLdI
	 zQ+fgCtopsnYyfsQsliCxqUb3PeglrWenqnVAFIEh1hgyF7MZ8FlfNC+f1xBVtireD
	 M8qOR46CaEUaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEA7FC5AC80
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178627803373.30339.5178384233212397860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46305989605fc0d5fccd79fd78568a1f54ee9a381319c38203a26208da5d12df
Date: Sun, 09 Aug 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786278033

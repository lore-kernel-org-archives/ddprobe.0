Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3AA111187
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749302394; cv=none; b=tFntrXe+d7G/lKKQYl1V2rNPBvSqhzd0e33CitTVBOZ5cgAIpTtlUrzhs4Iaot5rE6HwkHmxbq0sqHMuVe7wNUfNtyEuUPn4N0leiFcKG7JgU9qo3iC3t7O+ES2n4kVB4AQK9tcZeEUYqYKDD10g0z+oCWlv5XXK9YBH3iKKB4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749302394; c=relaxed/simple;
	bh=Jy9VB8hTWTP+x3+LCsB0+JSJFlQwc9pM1RDtrdmIxEM=;
	h=To:Subject:From:Message-Id:Date; b=eXWpR9LrsU061rIle2bWm3L64obwmRHcX2DFCQKnG2fwP9jc1z4KtbXyMwYQwdP2El+dvbdU5OFtHsQ4VpH00yiEWHQiPbu/5voGRQClxlaHYDuTUNi4lppxLrpb7AhbcF2vcZHJkBDVllKnnOh4tviGsF1gYJoaVaEz9bvWDOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rf7sdCD4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rf7sdCD4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C7FC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749302393;
	bh=Jy9VB8hTWTP+x3+LCsB0+JSJFlQwc9pM1RDtrdmIxEM=;
	h=To:Subject:From:Date:From;
	b=Rf7sdCD4PZIgxU917/UuF0uXoA+biUYTEFSR7OwKkV+qNbxdDbVavNv5ybLC27BTU
	 G6+FRnphL9p9sgxVWW7Fyrfu2OSVpSjj638pcAdkAQsB4wDHsLUNwiZY+0zGzME4ed
	 pTjhvTZUi7AMNMHfB8uPVFQINAJD9c9UvBQtS+sEI+HS7u13dduQGx2oh3GGeF4MAr
	 jD77xP6pN3PTwS+qHxrLOIvBz553Mzd21RGE7rm1rmLHRw3AoKOmpoeaOdGu5VROcT
	 hCCSndLyaMGMpt1l3Zd39gsy+QbjKa7adP2QHyZMaWCuGhy8J8h5nntL7k4mMp+CCW
	 +ccMY8QxuL7OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6C4C61CE7
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174930239358.13322.10824433800460675737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a58896a774f4597a6236204769670fbb643d747120dc2a65a08de4e2ff29428
Date: Sat, 07 Jun 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749302393

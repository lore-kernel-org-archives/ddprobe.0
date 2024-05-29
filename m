Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BCAF1667DC
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 20:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717015463; cv=none; b=JZONLEvpPGL5FfCejk9wxPPG4eMWlRpd3kRLm3ugl2bEuXbrLTQHgMhPzKUComL7KAFQBEn1nV/Cg81spKg2EphcuqrkLtPlRMOR8ZUF6QVaInrs21RUmelj5d1/VyZMGS2JuCNBlBa/Lgs+iBsJQp7uuI3LPNtTlFVI1NTMWi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717015463; c=relaxed/simple;
	bh=2lhQ4X0hoRqGck6t1z7rLhyjyCO5U7x866W6yh+QRbA=;
	h=To:Subject:From:Message-Id:Date; b=l5lYBs9u85C1EQIUrUEjKBXzH/cKRHtdiGAKYSqHjME26UdDYtTUhcVTIXPINwHboRq3NFQZXKyTTzc++wqTnLdY45qyDMX2xjpH5WptBIWuJ+5o/j5qei2t+Hj6ithYgMUMdcriFp5dBbH5DG8RbNQ3mll7S/2Au4uzv928mJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JgMZg7Gg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JgMZg7Gg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBFA2C113CC
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 20:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717015462;
	bh=2lhQ4X0hoRqGck6t1z7rLhyjyCO5U7x866W6yh+QRbA=;
	h=To:Subject:From:Date:From;
	b=JgMZg7GgpdTUb2uFiNcg8bnwFp1XyMRTHInyja+C+OSJw2kxCjNO0tuYWv3eMlYrI
	 wzE+8sd2z3mTjkdr8DTOti134kgAZZWY19vzQ5eYTCP/UWQgA7liOwl8tH0jbKUpfW
	 CTaYBO/t5BRKPIh8HxjRMuTFHu4pc1/cb/8KMa0d37KhGf1fS2mOwrXmVd3nSgarOW
	 RwMVyxc/oqGHJXYZ/dP9YWTtvtZfFJ7k+ALOWf9VcxZhMmu2bWpGaxEOhXdjEZuxzW
	 y3kraztLVw3vqLB7Wy5LY2N9dFrCICzW/QTe2NSEu3GTSmGHes9uZ7C+2eDEPRwLu8
	 7F2pp9JIywZQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5AF4C25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 20:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171701546279.3069.5431519213155464015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f119b7bf0521d54f3ae98da07408d706750e73ce2dd4bbd9ce1e6102f1113916
Date: Wed, 29 May 2024 20:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717015462

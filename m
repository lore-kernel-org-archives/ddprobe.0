Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2515184039
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 19:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767295434; cv=none; b=sq+m7S54hggUz1ZiAPfob8h/XfU8h29r0Line7XecRk3f/6n+RpmJ7PARKYwcVqA8ltA9HnLtjMoSN6UsTOaC34eV4vJ6h/ieItdC5NpfuQoK4CBpjKIYiukS4lB2O6/QokLVucNJAz42xwOYXXOtYGwI7czj4w/LEX1+ycyFJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767295434; c=relaxed/simple;
	bh=f8Vj77Pb3ENoGLOoKMeFWZ5XDKQQR/IiILIxzb7vYkU=;
	h=To:Subject:From:Message-Id:Date; b=IhNG4KoRr1LYoLGKxwqXkbDIG6+njvUGgIigkeuvCmPuONcmDY+LsY0uprUoIvW07FK+fYFpUTTzec9CXV5L00dgJEiiZgEjQEyizqkqZX6uBYTn40M9XvWyRaKI/Nf5kdIyTrYOgLi7W+3T6xDEKH9IeJTz15tWk7nDWHqYwrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MDJbJyd1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MDJbJyd1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CFAC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 19:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767295433;
	bh=f8Vj77Pb3ENoGLOoKMeFWZ5XDKQQR/IiILIxzb7vYkU=;
	h=To:Subject:From:Date:From;
	b=MDJbJyd11qnLwJ5lEQJkx8j3EjJ7xEFTf6xBSUAM4/BSeIZx+Yxwp7dKiawU1xTU2
	 FBp0+J/7D4hSqTOaTnaUH7anzE+TnA9hrAQKx32z10O53gvwjP/XLvuLKII/5wRvWX
	 wX4CVu+BAOtAhKVjkIfOCdkx1+/YXp/0XfqAa5VqInUVzSElarkl6FeHwF33tWrjy5
	 xWiNtHiNaomq52pGbblIHEjdhQgMVi1zF/4tzR9IHTAp86SYjCg0dPB83kD0j61JwU
	 c/jCDJgeekXQ/79WElXpRUL7bcRM38rDsF58Fg4IpG7U+KNafdk/hNNlYzO4YCasBW
	 zalFwWxQbL/PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92091EED630
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 19:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176729543357.19946.12759036483139019380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83fcf7ee82774d4f2c15c71d5a70ba78f5b7a196a8c8b9e4e368c48f0278d177
Date: Thu, 01 Jan 2026 19:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767295433

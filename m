Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10AD940DFB6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 10:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774779894; cv=none; b=U4YEYEUpUyguv6t8zAaOWxWrO9xR5bSYM+0AuaemozkGozj2S7ZsApv0u0PlmTiQo6K11OrwCZPXGQKRyZJ0ZQSA6xNMBYbFU4dWicAjdbIV8noPxTJ0mzfHIj1453Qug8CZE3UjZHfwlxD7HRRjtjYWF4DDN5LHMJpPtLdbEoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774779894; c=relaxed/simple;
	bh=OTFoWoyBMTOHKHyVvROeG3LaQ7ByZ6XtEZGjJ9mguP8=;
	h=To:Subject:From:Message-Id:Date; b=HUvSegFP7QkDkS5iECWNhAWUJd7tVWiRkGTRAkBvlMQgh8grRkWd9EJgGvBqeCNJNVvVver9Q5HTj3wb2kx7BdmNCJ5YmJmWhMYMUX0lPbF7DmTXMJ1L+xmdJyNfTdDOObxUuK4b+6+HSA1QU08xUiXSXX7pgolHL+WRZf0NV+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mPyTV4tN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mPyTV4tN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8AECC116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 10:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774779893;
	bh=OTFoWoyBMTOHKHyVvROeG3LaQ7ByZ6XtEZGjJ9mguP8=;
	h=To:Subject:From:Date:From;
	b=mPyTV4tNilagA+JLyuydbaE1AocgMYYpHyRoDV4lIWzNeKJPO3Stcrnf25fP5dC43
	 j0BrPdMf9JWToq3GEW9VjlhtFgphu57puNOMM8cjccinky53PjqXg/nBuTrfvEiuNF
	 9qxVN5rv5wlOF9Kzkm4wOWhahAn3bqa4D3Ta2zU2RYikIlfe/FC+gki62gRYsL4jwf
	 KOw9o1l0hSeSeyd+yXnMGIxkl1enlOzQRuxWbRSgKy9vrIvGMuDxlRAfUzI5xy/WBN
	 44tnbowv/qYu+ulV/ZMo2STQxjjYzEaixJr6N4GV69RVmviwJR0iRaOqL6RrQVOmr1
	 bD+e99vEIbVkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97AD6F3D5FE
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 10:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177477989358.32257.6765026528996821261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 631048e698da26762031b4ab95e025ef3c2e8a31c9b5725e77f7d4edc273f4ae
Date: Sun, 29 Mar 2026 10:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774779893

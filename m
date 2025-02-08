Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58AAE1925AF
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739040955; cv=none; b=sgb0gJwaMk5irHOY3cWE0A+VDvxfl+Pje+asZCumCWlUxYmhHsvqAeqjY8UcurfNQY71iXMuv9mPn8wfzejpfSN/nhUvru67QttXGzFjSpZrWL0h+nR8HAF2KCsc8m113e5UeZ3emUnbY0LRJyKslvp7ohd5ZeYRAxu5nDd9ad8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739040955; c=relaxed/simple;
	bh=Ry2c0PlGhghoGom9ZqA0db0Qz78Ij/yrRN9gJrEOc20=;
	h=To:Subject:From:Message-Id:Date; b=pO5Hhc4g5iTH5NtV0V+NLs80OSHCS/euJKkUB7rIEJqavVqbFrh46mTagHKMsTYVBwV6FwRG+7hQY4cdxcUVCkIzt6Dw9ZvmqXPVGOY9Iq26zwb9yEjMzjAtNPlyS2bpowWak2ZpyimK0J++BrqjKth27Y3rAhnoTHpzbX4frrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qJjczmwa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qJjczmwa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB3B2C4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739040953;
	bh=Ry2c0PlGhghoGom9ZqA0db0Qz78Ij/yrRN9gJrEOc20=;
	h=To:Subject:From:Date:From;
	b=qJjczmwaf+bTjuE7WBf1zeYOwoOH/aM/rb3XHxTr4PS+DfEn6NT4+a+2DZlS/qt1N
	 H6MqV4g0CN1ty9Axl0Xqrau6uqfMNsKI24C7BPn54xiPQ+u/6LCK63QJfPvt1KtBTB
	 E9t8OQNmeBkxYw405K3fWiEnnjnbbjLG3twmxsURgPhjh2MissrUrNYOO6MDwCnZ4R
	 za3RzekhVuCxmfHJow/ZkuC3cNi6IeE4Q33I/gvT/4ngAy6yWSmOQo++RBj/Vb1ALB
	 Wr9KmzU0cdFj1FyLyf5UL/LMYxkZxYfezIIGBTT9RQw2virwl6k6BfdahyaTu0tdS3
	 DlRFYCDNk594Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FB49C02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173904095360.10149.8243829170448736618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba930617b8a4a597feff0dbd238f320f391dc69332099677cd6da85d8ee9a298
Date: Sat, 08 Feb 2025 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739040953

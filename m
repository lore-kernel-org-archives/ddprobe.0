Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C89D2DF129
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759840794; cv=none; b=Ajat0o9wrVEmNLcMkH8PSzZ1Mc+Qib53NyAQqmwodkbGy8VtGpa9yBzt61zoPcBgLoWFZtxT6Qpu+XuZ4M9m/WUl7dlovxsD1fvsrKcz0KMnAT7f6OZ2qTpisMjftsW8G99WTKx/qUByZJJhFj4aEwZyrPSQvzR62TcT9y73Eqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759840794; c=relaxed/simple;
	bh=o2DKaFcZcWi/GnanWlbWP7+IxzOlSq2kVhZfGMXHnMY=;
	h=To:Subject:From:Message-Id:Date; b=DdFpXTfg2FyE3s4CQUJSK+qeUU6pLL11W/mFNKKlVI95XwwnZrpfszSKJiqkAyez4dyhsxLKOC4iY5JbqOJA4iIgJoIoklq3Z1xYGWe4es3B/uFoN73JmDWcadWBt2vFKqSwNesuqpbW281QsrE89c4uDrC6Gk+ie0dVbjURqXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ikG5M0kh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ikG5M0kh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F454C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759840793;
	bh=o2DKaFcZcWi/GnanWlbWP7+IxzOlSq2kVhZfGMXHnMY=;
	h=To:Subject:From:Date:From;
	b=ikG5M0khr3gj17g4/jQ2UJr72qcjRo9AlqIaFv5asVv/JNJIyCt+j54Z1gl4w/0UF
	 tejVj4GfaGnv4+Pvz5li2PFTXqz7mOqCfK3DnQVuh+uqBmZh0Lz9BpMnML4e4sJB7o
	 o1Kpf5DZIrnPZuzjIcmHQbtnMoHSKK/Jph2vk0Ve7VxaCQce7Es7Wr3fVD95jSy+OO
	 r2xKNDgAmGDE57G5iAIyUgf7kxIztvJQ9hZ63vwUp+n2RMS52/9/TWUx9xpowSGK77
	 EDG6H5j7pAIeSWOsbnYNuAC4+5j1GildOrfxpmA7nky7VEIPyU1NYtjwyCpgwtN7GT
	 47rCsKmQB/9uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFFECCA472
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175984079358.29774.7326879120476441439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff47aac9443764dd5a1e93d289482f68cdeb8bac8ea7a679eb6ee310fc620c88
Date: Tue, 07 Oct 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759840793

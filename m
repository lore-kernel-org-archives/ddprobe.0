Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD251BD504
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729693554; cv=none; b=iuph6fEgiAS1DkLJazxNybTrdasjFVRFgGTYiiJ82p1Wlfy1UdWvCqjhym71jlUM2Yi9K/LIsoSgnIiNwD5Gd17sMsPiqujPy/N7rUexhwq3nAwC2yJW4jgM5uggRWdE47eXO9OAygGIVoe+aXAN5YeeWBe1OOJd3pZEAPt9V7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729693554; c=relaxed/simple;
	bh=qVniJG3L4hfR7uhwdKdnFQfpq2xZdyPUc4D7VcF+huA=;
	h=To:Subject:From:Message-Id:Date; b=cwmUdqxCIEvVhnAcTy/ej/WjnRjc1myQaP6eer9uB7eyMCJOg4dYO93LGvawHTd8xZvrkDQuE50zO2LHjCPOsQdJwbMVQ5avqmp2hg5gSPyH1nkCJaV9hvfIeGp9r2y7JPHjN/xkdGK9ZZiNa8iKJ/w+ZuzPRQA3h8CDr1Smvy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pTWJ/Lxw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pTWJ/Lxw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1CE6C4CEE6
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729693553;
	bh=qVniJG3L4hfR7uhwdKdnFQfpq2xZdyPUc4D7VcF+huA=;
	h=To:Subject:From:Date:From;
	b=pTWJ/LxwgDalW4uVGTLEbDJpFPe0tw24n6f+6Vl5ypvRSIoYhXJffMAGzdfgUluEi
	 Wj/KX9/Eqzqz2D9mP7zae0i+5ii9bav50EM06gZv4vHcaKjFQJGQ7/bom6yktGt11B
	 Zexhz/y7IHJeUusVvv27sIFb/H1fBO62wO9Wgcrg+BQLtrzKVUBrO7RA68Xc6sG/PT
	 n1lhFkvUZT5mZAKBF1BoYC5nIAfrgvk5cvBJYe6u2i1FuSegPLVPZ2WH+GFsC1XASO
	 PYAVc/1duY1N87jVjmvXfXiHEx7LQzJcvaXFp5Qi/w4do1q7gCaPeLI4Hl92a4cpAb
	 zjaTBqzpyk2AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DB06CF5392
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172969355363.16114.10249460149331544230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1700352771fde6703fac83a536c595835d21a0f75238afa8bb2ba462785c1f0
Date: Wed, 23 Oct 2024 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729693553

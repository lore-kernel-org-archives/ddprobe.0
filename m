Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AE393C5837
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792303834; cv=none; b=pVaO05Fm087W7cHdDk7x9U38a7ca1+K1InbbjdfkXBayYpO75CeYSeuxg1sMpyEQlXsvahl450yqwua9SZYe4iFAlR6ZkG0Kxj3LIwknCZSUyF/5sHlu9NCQAxhoNFzWivkuGJPa5fKlAiGj4mP6uhEFs1xBD2cG9OtO6nBhxHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792303834; c=relaxed/simple;
	bh=O9kmNap1baEyjkaT/KHY4DOBBRsP2bl1S8ZO9dTb66I=;
	h=To:Subject:From:Message-Id:Date; b=V9YbxvdmowRrCHd+DnCXzNgX9UJOhIpJ51ButCmGslTY/GShXj67cvUBpRQVgw0kMV/cIDGcnvRUcCyAk+wBILQ6wM/QDoUNxaKdgXzOtYyeidm/ltziUkoIV/1cmcVwYtgolvbUjtOQOtKcAdevnctxIaEFfz+QTIzS3n4wG7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sEfoH8GH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sEfoH8GH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D74C3C2BCFD
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792303833;
	bh=O9kmNap1baEyjkaT/KHY4DOBBRsP2bl1S8ZO9dTb66I=;
	h=To:Subject:From:Date:From;
	b=sEfoH8GHnqs2VQHahSIwuRU0zQPt/K+bkchS11nSMH5Zl9vpQtIwhc4L9t3FGJHii
	 XJraeOD1Znybfc4P2Zc1Q6MEfj/Zih4NtQJLsa+WNkgGoOkyy47VZFpyns3QPa2Wx3
	 3H7E5BTMaNRSEJtBWvn34LwwHEwssJx3d2s2cbe+hknZqXdmLPd9tuPlqWtDaJr9Wm
	 /E7fLNzw3J7Z6bRaxq5pTj/52uS+zhZs7qQcjC2/eeUx2kmcw9BdL49N9c6s/pTslz
	 L8Lhc/j0X+4HtwKTkq9wBqgR+vsfe1KAhoFUyGHbglSWBf2FH4enTdXJ7bOzI5Q0eo
	 zrt3md5czscEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B49B3CCF2C9
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179230383370.22348.7929655182667684222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 270a6375cd749aced4a84076b6eefe184c098baed4f315aef54f33aebfe10ffc
Date: Sun, 18 Oct 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792303833

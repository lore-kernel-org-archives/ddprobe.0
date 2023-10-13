Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5666E14268
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 14:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ug9XcgDB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD26C433C8
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 14:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697207228;
	bh=mnyPKg9YwMcUi92xw2i/0j5fPy/KVO8H1nvJsvPXqSE=;
	h=To:Subject:From:Date:From;
	b=Ug9XcgDB8KsJlVaE5phNbENjgOKGwOp4JT+I/B7AyqpOyigiJAn09xIfBOyVU7LQI
	 gdCbt5YOp4QIejdckz+DT8M3KcGOLTrLKot5IOQIlewi2sFbzDzyijXA4Nt/O5wH1L
	 qYJI0sBDcMU1NhpEUmIIaAt1qo11PYWvmHKBthgUEdU5OoO5UfpwgRkP3pz2Rh1ymp
	 swi+oilSteihiizvKzLx1DhQNGERxOKoL9dcH8yTjI3ZXzflQMvXkSIynQ4/Ut0akl
	 5ECs5z9KIGoEdAmxO9msTFx78smHZpkMY+Lq/Qlvns9P7UhThenecc+jr9/Qg//fnU
	 ZTpejPNfxrIgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED7FCDB47E
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 14:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169720722870.11721.2460419447370712632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da71d2a8895a95fee9a1dbab8df4f36cda2db81be8c5cd9d29a7cf60b4df835f
Date: Fri, 13 Oct 2023 14:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697207228

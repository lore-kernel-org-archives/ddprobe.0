Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B44F2EA173
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 19:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777577854; cv=none; b=Oca3pK2QSgBeehFz/GHu4Hoj1Ze53Npp8RhSjsoB4WEXxNBy4W4OvdxYDq4CunCKOTkN2pNWk4ynI6+UbYQ7HQU/eUrP+0oWdkhlGvalyqHjW28VXcJb/KNbwGzgpjUivoEzUhfrQP2WDePMrNjyYnii8MLkTnhb8L+PlwRqlr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777577854; c=relaxed/simple;
	bh=cfL7F3IhacJuC5/kWmaVDgR41fL3a9MBrGFoVMVUYvc=;
	h=To:Subject:From:Message-Id:Date; b=i3FUzECJ7z17sXQWJXTrEJOnJtTs/mi/7RYjc0/aPcAZHM57BO7koOg7EdLajxfAx5CGW2t1JmjeAA9APAw3/I78lVLVUpZbfewF70d8FH8K4NrAcSdl+uxBYSJsiQ9X8aL2IwMuFV6aF+1ikdXeIrMZjNzLB5Dz4r+aeZkFWaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dAbdTi7B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dAbdTi7B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD5DBC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 19:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777577853;
	bh=cfL7F3IhacJuC5/kWmaVDgR41fL3a9MBrGFoVMVUYvc=;
	h=To:Subject:From:Date:From;
	b=dAbdTi7BBITIxPj+Bve6YmKk33ftLh2zEZH/0/II9FV6Q8NjEI6KaCqRGZlmb8zNb
	 ilInR9NnC2gYqQqakKvjY9NHp8y2i0tN1A8Niv6Llxu0XEdclswUsaui+jOH61s8PS
	 KivT+BEXYzuIjC9A+3r7zpwVZfKUMsEhztQlFnG6NzQd842CC0BUhXVU28uKBpP7en
	 fh7Vm7piCo350OjicBrs5ix6i5Lj80oE7zyxp6+2c9w7M2M56X/MbRguKfmYsWDZym
	 XzVg/Hg2wXBLmTqULkmg3gGKu4rrbuwl0PRwwi7PCeFHg5MrMeJ1V8PnBxIEeYX/ig
	 GhFC1sKjQSdkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0BF4CD13D3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 19:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177757785368.31863.14543633773050093042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10d8193ad021e414aeedb27e0cab1c36f3789beda32d68723508c29a0997b2b9
Date: Thu, 30 Apr 2026 19:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777577853

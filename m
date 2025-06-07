Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4355C145B25
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749314394; cv=none; b=A17roAqRJNfwOuFPUHTiZNylD2aZ6blet2ijmXsH9l8EW1dlrQJpN3PaSlakz5dLfwJZqD/IZMwVIw+FKKR31cQpC8Pi17BVzLIuPkmTbxQJJp4nnefW4cju+RBMnUDD9/ceHEGu6913dqO439of7/wa+G84zlGXyA8ZGllOJ7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749314394; c=relaxed/simple;
	bh=DKTJMaZpK7YaWb0jGr5e+F4SOXEKUcL+tKulW4cUS68=;
	h=To:Subject:From:Message-Id:Date; b=tyCG4n5WceoMZGPXxko0bZAPGhAhFHXnKySckj1etFf4tiXLEPKIuhZ2LUsS6J7+g4nCCHGGYHzK1M8I0RvKVzffwbGkuoE1kxpCod9oTwfWwUM4ln77s8S6thmhvmlubcxUl0ecGHWptffG+uFbn1CbomMyEw1zUWtKPQwnf6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JXYGh1Iv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JXYGh1Iv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACCAAC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749314393;
	bh=DKTJMaZpK7YaWb0jGr5e+F4SOXEKUcL+tKulW4cUS68=;
	h=To:Subject:From:Date:From;
	b=JXYGh1IvxO2X9A+CVeQrILydfpgCwsOc9LE0/ifrW8fsoy77RcrW0wldqQCi20v1F
	 KihG1qvvbp+w9kGG8UpC9MFBMjVwJszMxp2W4M1JjARFHIoOlzx94suUsel5Uaj0Xr
	 gjZDRLcV2vofNZS6Cw6oFZTXv0oCkJavy6WMw7ti4aDNmvL+A5IOzQobk3vyIkyl4Q
	 l8ymdR+NDgMQy2rgW/ttK+tzi59ByXCJoz/j2kuAH+c/J2lEU2IaAcO0ihNpL3oTCc
	 o1YQMADf+Fl4ycZ7vcuNoMHDhtyXUUOMIXHAG08cuPaMoCG1uF0hs1bA+VJRyZtLzp
	 d5JcrNg2Cq2qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94543C5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174931439357.26250.12354550227551373215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bf76234728209d36bff7e6cbbe777dfda6549db86616ee6f051479fd03853a0
Date: Sat, 07 Jun 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749314393

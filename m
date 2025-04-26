Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3166825C701
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745690394; cv=none; b=KWypixliBoTR/3thxvtqsFxgkCgf7PtOAyhcdb1KlO1m0tPpWRhsKBWdD4L/GZL3wJOwJet2DmWXfKzutLpVcTIkWmwvP0T1z30cXIUMR7nn2PchFvuBPB3UUA6jUITukOOYVm7/ch8EaLSG1GGrt+QlZGfWrcaLTPAN1Cn0dkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745690394; c=relaxed/simple;
	bh=ehe9iI5C8cvxLF7jwqW/K2H/3mY1/R/fh+UVcCu4OCE=;
	h=To:Subject:From:Message-Id:Date; b=XRmpwKe1fIzz/6OOplyEM5YwBYlrZDGkrVjRTNDpFtbtA58KG5f7J+MktfddEaB96rMZDBJHwgmy500kJa29n/T8W3rzmq1L9TZHksHub15gtVXI780gR312ZsB2gE4uN0HpcDEeoGa7ELVtYHrodgOGIqmaheurg4SUAHuIH+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hX7CLpNy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hX7CLpNy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D5FC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745690393;
	bh=ehe9iI5C8cvxLF7jwqW/K2H/3mY1/R/fh+UVcCu4OCE=;
	h=To:Subject:From:Date:From;
	b=hX7CLpNyGzJsKlEIg3vC2aqEFtRVvNPIde/J6B2AeAYxKU9RTVbt2U7SFxNLGwzh5
	 KDssZgulgO+cYLWENpU9f9a9Ta3vbDzkWRWjdyYNJ4uXkJ6ZSNIS51+koR2LiRYsvm
	 FAmoQSsjvVoDFyOaWXNoWICFvu+WNnu90XnhbSjAW6Kt0JWh3CSMHnEEvNOzphEjVp
	 9gh4nTQin6zMwi3epQCLhz4SaKY2TVbz/l+6sXDMYeS4wGeOlPeDYDCdtbTp2a9wKx
	 R7DdUMXLVb+61H2DJ1NmUQmaZ5ypaROgXszSXbnMj7wQTwfqGKmtHsjFBTj2GCoY0H
	 th/+vf9wgtXzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B47C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174569039358.32665.10363347818291121017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f39af0d7f65d9d1e437efac59e3a39f2fc0f4fee0b1641cd71c8e31747748efb
Date: Sat, 26 Apr 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745690393

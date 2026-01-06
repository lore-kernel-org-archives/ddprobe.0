Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F8F3357718
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 19:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767726834; cv=none; b=FWCirruX/huaLdAJ+thaogGyxTb33Vn1Abxkq2iGmTYlN/uIaFcjE+6Aw/xXr6NQMfT9tjYWdd8LwX/fIZferX/J3vN6JeTFTQiyrdwArwDO5OyCmRu1lWNAfEecvYlKINBXnCWcMuA/sVPDpHPzBaHQU8VQapG5cOt7qX+UVwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767726834; c=relaxed/simple;
	bh=3RCZrm+cK1KDO9/kDwtQ1vi9kDOugeqU9daX/0J5T8g=;
	h=To:Subject:From:Message-Id:Date; b=A2XK/ltOxDn7q1pJsRc83lDbi1I/rU3mhXyFXT5H6aLFLPEez45ECrZHyA1foQ1eOrSv6+TNSnft841+wB7g9FgvgcW/NYHdwWM64FC9ALgmxUsWrCB+hIRYoQd6/IlhKsT0M8cviEd350M5b0xaQIDqXPBdYHPk1fXZAjCwwVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hrg7voo3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hrg7voo3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFC0C19422
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 19:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767726833;
	bh=3RCZrm+cK1KDO9/kDwtQ1vi9kDOugeqU9daX/0J5T8g=;
	h=To:Subject:From:Date:From;
	b=Hrg7voo3NDoQYGne4cAzw3jDc48dD124mwzihNJnujh1p8aLs6yttOrr/f1+iYkcs
	 K8SpLvByTcpNE8LvTMqORZvI5GbNbN12znYTa+V1IF4j35eWx0j9DsVSALHArrYu4E
	 /3DBeRXpVkmOJ880LmOYpjbnrTjZHrT0LL7S9j9Dh6W+NkJkDCwbD7EIrDLJb5ZhZQ
	 NBfAnCAqUnCo0SdkddrJYsOcAk7uZY05/b+1jYLk+vTMUZ5ZofUw05Upxc38ajs1y9
	 mjoXajAZx+JOS2XbENAY16sNLe72vqjVZ+q0zYdksSSohIT/JG9n7mcZnuClHUVmBF
	 DMY8AST1+syYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBDBCEFCF2
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 19:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176772683358.11412.10235909176479273047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6934aab22069c68cabd87ba9ae7feb415b65c4a08e2a1858dc0d891d078de152
Date: Tue, 06 Jan 2026 19:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767726833

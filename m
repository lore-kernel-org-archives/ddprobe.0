Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B9D02F531B
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 05:49:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784785774; cv=none; b=DebBul3qYfM4+4Um8+mD/p2zEJR5/KwmaiiLZF2fb0SEai7HinvcDEdjsk2Z6QyUCJP1MfKOa80b2VstyNLUxU4xWh6e8/zzudrUf9KRyi0iKIdTXGNdVYCk/OgKyvBLBCaFpSWFgWZIDacVr+KWzBNg5QV9cTO/4x/ftlX4Htg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784785774; c=relaxed/simple;
	bh=mRvHtnsqIcK5P1YlLxNTc+3cR4vaG2MduGZ0QHkSCB4=;
	h=To:Subject:From:Message-Id:Date; b=FdSioMD9I8FTNMa30EhvR4lodvrWBkYIDA3Ct576HlJtaRzqkA/Rxq2qwc8hwTqIHc4vaB4FPX/E6TyBLCLdv9iYGk2p0gfAF1d12nZ1/ZI/vCt5XosorER9bHxq5/04/K8QEFYFtOKbIe7pFFSucLRuK+fagtevNRnyCpo1+XM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=raplI/lO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="raplI/lO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6496C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 05:49:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784785773;
	bh=mRvHtnsqIcK5P1YlLxNTc+3cR4vaG2MduGZ0QHkSCB4=;
	h=To:Subject:From:Date:From;
	b=raplI/lODYKz2UNk/wg3K70t4DoF7EkLdFMtx/03yrz9yDgnMYR0cQdfCN5lu7GdJ
	 Om6nf5DeAA5UaC7/OuV6o7pTCMBvCQ0EQLauDqPe8BuzwBSKZaysvrj9mN4hpWQoAq
	 rBYbR+5UDIPy5GJKXyYMYm52BtZPfuLAQXC3XTwxAMtQ/OgS8bY/aCFMeQNzQf0aOd
	 iC62Ij6iYhXzo52wj4Pn47SMCaIoPwt2KIiPlbY3Vug/T+B0QJb64+21KLdh9Hvw86
	 p9dMnD6XM1e1kKyvUzplxJYGslcYfFHJywaUieEbjXx1Vho1V19tOmJW1uHunVdJv2
	 yrvrMIiau2IMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1C80C44524
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 05:49:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178478577371.13130.12009651100634239654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a03929389185e957440aa96239279a8699e7acd1c0408ec9c21a6e6e7468766
Date: Thu, 23 Jul 2026 05:49:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784785773

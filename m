Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 392CA225784
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753989594; cv=none; b=p/6fu4KRHw3zKMGG0rjk3PxNxLqe5+b9IolyigZDqu3EHb2kcgKWefT7y6H0NTuxlwKzxfq5g15HiS9Heze5RqSz2WwfaDIfIIgm7hY/wDQxf/ZzTZYjIPRwaWAwL0qdHNs4jwoeOUDUj6Shmx3TOSyqPdLAcyPPgARjLobbMtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753989594; c=relaxed/simple;
	bh=5lt8ZvG+2B47Qvw8Y8LmahI+tm8UosuDmmLYR2wxMIk=;
	h=To:Subject:From:Message-Id:Date; b=OniLq/9pnzxVyE6mMTZLP2fYscPEZDXAFDZ8/zVRl/fqC1jO4wJZd/3NlZxwcGYYZk2tKVBsxU4RwiLPytwgdj76RYxouVg5doR564xaXLnZfAP+c7fB8Hd6xYeZ4xLn24/P0uzUzL2qD4R8WiXZpBZZt19HwuQaOzVezsmkthI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O1W06W+9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O1W06W+9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7040C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753989593;
	bh=5lt8ZvG+2B47Qvw8Y8LmahI+tm8UosuDmmLYR2wxMIk=;
	h=To:Subject:From:Date:From;
	b=O1W06W+9jdRnFOwrV/GRf3Y3onlgdz5XJlTuZ6soIoO8r7fXiAMGpAJCWkasMdsMk
	 gO/OSCK05D3saDzqce9lx5E2/YV9GAM1zrq0A2YuS/MGPMjH1Aq1V+0DXoSMBzhvF3
	 j84xtKwLmsv9cyVHEu5QeeTOYYrP+gewLlzYyYnTGotLSWSDuzs3UQYMcWktzEJZik
	 /Lf2cXBesnQ7D2a63IwChSM3GoO4PgZrrIQqhzHNLsYby0mseFsJLxDm8XTl0ixVnl
	 99MiJus86rVNqd92E+rVS/AR9YAU9b08t2LMcgC6XRPbEMhCN8kkA+9NSQy4zvQhsL
	 vNiIbmX2fsXIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912FFC87FCA
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175398959358.14969.14286734172224665014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26907f5b7425504cd9df5294452710a92644808c17ec0a1008738e0e963f9598
Date: Thu, 31 Jul 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753989593

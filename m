Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 469992DFA42
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744841994; cv=none; b=Rjfch2hFK8wKOQ+OoXowptnXSCmKlqhM98CsB4VFsvwlSPz7ODzJjbjBvL+GOjC2pDYcPdM3KTj9Dd/AtC80ewfoIS+j974VuS67TulF/IU4bQ7gxGQLR/ivtgGTybL1Ww3Gn2O5F0UbMYIo9MaRA9I7SveB6GiaUereXqlCWJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744841994; c=relaxed/simple;
	bh=VvWvjRfP3maU2e7z8x5UgOLq5fntUVpX+K5DyQpPVUU=;
	h=To:Subject:From:Message-Id:Date; b=LquFEQb38XBpEpYDejK7AECEuRPsaF437q6EKJ47H0xh0ygQE0G8m3A+c//kRMJ7dbvHPQJLXGPqLxlHaluwPh/ZClTnMFveEBsNRBcBHjbqZnKu7Uwd5Eu+Q6QR/Ruf7D6TmqHyT9SjVY/Sh2nLPlJsmLCFWNMTiutmAMY5qEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s+vaRCR0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s+vaRCR0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF4F1C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744841993;
	bh=VvWvjRfP3maU2e7z8x5UgOLq5fntUVpX+K5DyQpPVUU=;
	h=To:Subject:From:Date:From;
	b=s+vaRCR0efSBiX9DDk2OOUE4UPzjJJAUmLfp/68B4aIZd31vfitz7exrG6qv0UFrN
	 GPC2cfEfoIFD0EC4qvfOdDp/sbCDD9y+defMFizf8ct49RsKd+Bc3wKHcwaeLpvIU7
	 76pqVYSEhigrGCzkXwdSaomHD3f88z2I0e/TpLR4ajfYeNWdTNYJiuifS1iz1aBb4u
	 25hvWkPRNV8Mk3EhLqtpoYbOtCx3s77IwrtbPcb8MDuJ3adjraxkKemQUX/MmVdLJ5
	 8dD27XdMY+s0Luqm8MI0ygoHiu/JHfeNeK4xurT804o9qMJkcH81cnz3IrXI84ZWr5
	 wc5mGr9B7Lrcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE5D9C369C2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174484199370.9731.6786800604414540088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00cdea25ee8dca7965c1455c8bbf8032591d7c6298147d3cd551ead6fb84c11e
Date: Wed, 16 Apr 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744841993

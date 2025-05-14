Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E944746E
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747256994; cv=none; b=uC0an44CGBSy4+wukljPO1oktBWYVl/P4h7yjSh8UQ2KArznyzYAuS37ZaGqWVCsTYPNqfM/Z1Vr3P/jDqhXVpNME44/J7RUsKfTVetVOjeNT2NVvcgLbvzp+wEbRDLbG2rlVZjvTapZFiiDrd5YLtcwc8H/eQaoqtyUf+64hS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747256994; c=relaxed/simple;
	bh=0cR+TPh2Hg2oEzDUEUkwYxweqemRTBgUGg/hYdahS+4=;
	h=To:Subject:From:Message-Id:Date; b=fYEZFm2tGqOxGCXV5EPJO/RHDNfVkncvgWfj5b9pLiBS+QxawJynVz9AyrmsI4cE/7rrCj90vdDz6Bbc4OPj2nLjUJ/jM0/OumLVroMY/WZyToVDmB1xriskwDekWpBDvbFyeEAcSCXiY4tXdIEUdSBzIU5Dh6ryEoInGeYjd+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y9f/DBLg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y9f/DBLg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0864C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747256993;
	bh=0cR+TPh2Hg2oEzDUEUkwYxweqemRTBgUGg/hYdahS+4=;
	h=To:Subject:From:Date:From;
	b=Y9f/DBLgyGePM8abxDEX3WrZMEZooGzbY+gv2oGaWcV4H0/dCrdQhYKAgJgbUVuvp
	 EGlnLug0Xc5SGCjTqcgOr4JRvgM3BcGeObfgnY9NJ7paqqTa5CuVtCgX8ejVwP+MRf
	 RfAhFGdEqmWPmrRk21NX/ntlXTX5LLBm55uYxdlQo4XeiCxH2mvyGCbCZp8MZTBKWk
	 WEI4tgy4kvLUTvBOLPsDvBhY4ghfBrNQAPPBizVx5MYJW5EntcctfTPfX61iBOUNx+
	 Kjh6NYtr8O4bllBoz1OWapxh+gdcN7iyb3UiF6u+oKZzKV+nuypGId8XuFYVLS6V1G
	 KbbFvd24k8Zcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA6FC3ABD8
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174725699357.15247.11071171390810136219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3733827601abe010c9a38a510f2742c47d9f8094d20b77934ee54d0ad9a47108
Date: Wed, 14 May 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747256993

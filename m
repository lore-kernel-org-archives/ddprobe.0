Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51AC01940B7
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 09:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718615903; cv=none; b=RA+Ew4TOQ1pGbUPGqhhSrW3j818hVqOHxZLLIZcaugYgxeq5KwV1sOvzWgZuATmKI62zg2iiFTyVi5vszj4loVR96LMbi0IA67WsGV9XwhbOGGI7NeuY+cl6IL4jlQzy5fp77eBV55WJQtcdSgqgpADDMcExO7KfXio8Igoovyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718615903; c=relaxed/simple;
	bh=PfnKFuxe5i1xTm/i8vN+a3wMnD/g/BOu30ay1i8nZrw=;
	h=To:Subject:From:Message-Id:Date; b=GUReBZHZkMdiG3nSB0fRXyZht2hV1OL7GM3OBYfcTv1vNKCxWp3X3iv7Kv7nnUiE9avbkTnOPd1JPwT7E2WthPpojEuQ2IWlAeSME/8Gdxvn2yjAoJNSwNkRAjoI0R7gDH/JoWF2hbybj3JxgWy2O7SXOzVLc6mO796FmzGYUwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DXxmb7L4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DXxmb7L4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF085C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 09:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718615902;
	bh=PfnKFuxe5i1xTm/i8vN+a3wMnD/g/BOu30ay1i8nZrw=;
	h=To:Subject:From:Date:From;
	b=DXxmb7L41ZFBQyWj6KHOccSRltnaNN3EZNf5BOp39rzbRuWpiLuYo3Rgrh2kUu+fJ
	 Hqi5f01XIRqK8Ntmfmha9vA7MImmoQU4zdBR59vWYmGYH/5SANRLFI6YYhcOgDLpte
	 Eso5SVxsP+9f1l9U0dR8PGdmbDDLrEVm3gj248C2yIvMBOXlugzwac7adsvoQwbCql
	 Tjvx5ZBrTi3+seqH9EDpZkSGqf1Mq16k+PVLNnj7/yO0/KACtZM/uzegsVK31r4VMV
	 1Vgzi9gwrFMXzC+hnlbfB43AVmfBzFIs6+14MhPQeWvRBf/mOIxgXPBRsGw+EpBeNL
	 /hqx0M2zVZh2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAD26C27C6E
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 09:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171861590281.4214.1929224896714070256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b18ec702649bf8d3dc798a220801572c5564626cc635f500152fd67d54b26cae
Date: Mon, 17 Jun 2024 09:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718615902

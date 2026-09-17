Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5020439D6DA
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789682434; cv=none; b=kv8xhuxpfXtfncsw1RS6vB0wWe85rtS2FAo9iy8bFCmI0ElXvx38Mud+P1RxFJSKih1VqmEGnDJYD0yoPikMD8fnGquWDGLPrqW3HlsbES2LO3o+K7Rg9jjb8qPtyb4dpkrPQXkrzpL8PJ/yXZeZu5fJTce0PwOaai+Fss0tqwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789682434; c=relaxed/simple;
	bh=XIdZgHLxrnOb34XGX0bBswKtuazz5eLQ7oJfnd37Jeo=;
	h=To:Subject:From:Message-Id:Date; b=ZU1ssYOCwa9xe+Xqt+TrLEIzEHHMNWfkzbYjswbV2s1fnP2JsexXiJoB7EPnbDIv4VC75vON6DeC3rwTeSf4zUlRueRmVDrKd/mC+ilszXqi9P7hNfvMPCN8G0WbsoE68L5hCqsxalWlCNsRgELA9NVtpUeNoV7UN3QlT6yA+Qc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c8jrWw5R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c8jrWw5R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1274C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789682433;
	bh=XIdZgHLxrnOb34XGX0bBswKtuazz5eLQ7oJfnd37Jeo=;
	h=To:Subject:From:Date:From;
	b=c8jrWw5R48LEfcCRrWS+MqoyUN8+EUbdG+ib1hh53J/Wn1nnwRRyezAGtsDD+XEJF
	 Tx+fgxPRTq6tv/wW3blQ52s/In8usOJAyMeRQW2X7CB8TN6Uj/fFDmsFuIXVMpfjiZ
	 4WT6nmKNT2gjiLLwTkJHbcMCdMmtI6desSC8ekLsCwJqKILVN3yc9R4aWdjdgEZz+X
	 86kXcg+IfLv20x6XJkain3zHmTfmRM7DK/R69BH15cMQb82/6kzldzO+8dc/+TD79Z
	 M/7lLSE7aN+ZSNw1OVsiFQ9M5MKAOh2KqBLBbtNFaZYbYAQdoChJSlx1WIR7ogvatA
	 veZDAwV20PVHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B22D3C982D0
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178968243370.32335.15287761845769462133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bba250a58ac25c48ec71650c94cb8fd20e6f11891bca2d07359969b15058acac
Date: Thu, 17 Sep 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789682433

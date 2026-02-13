Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE7B536405E
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 17:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771002893; cv=none; b=L1YYXhsc+xStOaE+f4G9iTMe/XW9x7iepqHcXglSwP+5gDfZMxmgBExGLry+lQR75avLarMrRVT3AOEEHVj6Ot+BmNCNZiayATqlPU0FG9UZFe+8ylpTgecRXbzMI499yq+zN3gNePjRX48Jgd+PnMyvJved8j2G5+McHq85/3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771002893; c=relaxed/simple;
	bh=svUzcY2srR5hNmoaZBbhn3w+l1Ammy43kAvhNqbvbvk=;
	h=To:Subject:From:Message-Id:Date; b=XVU50XYAxmpF7aapXuM7dFagMH0OxztU29dGjlRqxLzkwHOagM3cBTm0t6G9S/+bGcm3/MLzOv5jYGDp6ZqiDW58KCJdhtJMCK/or2ZOyNYts7MoW3qb7WUA6Z36j9Aw7vFgNA+eFIH3zoe3q73d86VrA3ZTTLmD9agQNJGEooA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HzG+xBDR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HzG+xBDR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B51F6C116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 17:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771002893;
	bh=svUzcY2srR5hNmoaZBbhn3w+l1Ammy43kAvhNqbvbvk=;
	h=To:Subject:From:Date:From;
	b=HzG+xBDRa4pExivhylgN+C/3K5QbY4KmoziylV0rp1kSFo/wSt0O/sGQoBngW+1IX
	 KFuygV7r5hUOnyG0P6wVe6fmYbMUhY199dt3bsP5xtzcVZIPiPE1K84ff8Xn120xkP
	 O0VRGDw2xHoR50oAXlLz+wLg5SPezkMtwaEKXOpN8xMXCNcWxhuykhEHL+zxiEqdPn
	 GrQTwkQDdonUCw3S4JA59L3AMC/3fKKSqx+ORoC5rjAHqq44mnUMeRU+p9675j4Uxv
	 8vOGfP2WWrz4/dfG8pdF/gQOg5EvZrPgyb1tqCfch7Ch7cqADosngNv0WF4uyptXkJ
	 8tKfM3zVlOkJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FAD4EEA84E
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 17:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177100289363.8515.17363676341014718790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b00b5382c6099b9e8ff9ee0575944b9ed06645c978673cffec7e2e8bf4340e3
Date: Fri, 13 Feb 2026 17:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771002893

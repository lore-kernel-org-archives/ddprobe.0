Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E6964A31
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 06:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716101543; cv=none; b=L5pfbQqY5laKqIjqyebyLGvisWq0n+xHJUcr7BTIqx0gfAY6YxHdEHChs6+PpMvS1QBbZvpB31nZ5CVyw2k6B5tEl826B0dIgR/s70qSsHFWg5TBDUec44zedm2V/YfMGfpp+53rHWzLYYbm7QY3g659v8OLRCLkt95/7raYOKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716101543; c=relaxed/simple;
	bh=58O79jpvWKOWHrqHYagd/B4X0fwZafnKnv7W6brHKlA=;
	h=To:Subject:From:Message-Id:Date; b=N2/q0fkvFzlRmpPH08e3DiLSvYVIScUi0M0A01e+Eu09ejtRYYP/OhC4IE+TagWejnFxwbuVPKV2ltqVuKCZiguX4X8z1IepVk2LvBuUZ7+lMDFjPmlkEJdLOOdMqNupSj/hbVNrvVOesUD6L1YWq3OU/3YWMIpSlh05qSEtNXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DlndnBz+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DlndnBz+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E28EEC32781
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 06:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716101542;
	bh=58O79jpvWKOWHrqHYagd/B4X0fwZafnKnv7W6brHKlA=;
	h=To:Subject:From:Date:From;
	b=DlndnBz+tZtVBSJPdVIvjFPt9Cxv1NrVNBOE3T/aG3fPlITLx+o7IAN53vWxl0uEH
	 sexzs8FeMtGFm4oyiRefEmiupjHxwQUmZwwmefcV/Xpg4X66XU0SqF5KJUAqy/zJyv
	 fvuaeNZFDo4CLL9H97o3ZxXITyqG9ygfFJphkFYZLu+cPtQvVLFVAtyRTXZVkUM/wG
	 OZCLLVY/nV+t/aYbT4w8IGCPrqd0/1I52/eBpDPixahvn2+IqsdL+5+KjHNGjpCQ2A
	 Ie6ZKlTWpXMm87jaw0+rvMYUzYeHhQl7YBapXBGZEJDLCayuNTa315EUUUhCB7p6Zx
	 vcdz4CtbwPAiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8AAEC25B75
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 06:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171610154279.15904.12775690894373310035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed459ad27437910a2f1319321b3f68549ced8bc66189d8d782bc9000faa18ae2
Date: Sun, 19 May 2024 06:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716101542

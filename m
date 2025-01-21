Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FC222556E
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737441954; cv=none; b=fnjEvHjpvMJZ33/59ANC5mONM59qW+hhxybu+cXJYqnb49eDsUg0H6b3P/N4snGef1mWUeSQUcbE8QaanTSbwGLpoNRjgRTpgswpMy4AdFbo1kocCv8O5PNf4fTLW8TIKEd4xjz/10moY8Z3f1ShwB+/w5xnXKrdYmux1EnTgEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737441954; c=relaxed/simple;
	bh=hVwVSJGb59wyhjm9jbTqOtkssEjZTPI1iY4mNNRI00c=;
	h=To:Subject:From:Message-Id:Date; b=bMMwdcvyfg2MWo+KNkBpnSlaFS8Xh/EwEWJ8/ZQpuLRkFHbOQqIDV534tqI0NlTVoCp1CFHlJ6R70ruxVCJCg+rof/loWmwKMrW/E7UJrT2jz+unZIDh9yWCqaPgKRmpDH46iRWUdW6DcZdH7yvPGNXHKAwX3+0Xy5S1CRhH8LE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rNNMSme8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rNNMSme8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA9FBC4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737441953;
	bh=hVwVSJGb59wyhjm9jbTqOtkssEjZTPI1iY4mNNRI00c=;
	h=To:Subject:From:Date:From;
	b=rNNMSme85nKZpQcg7KO1JFEBThUOIxHBKBiKt3Dep+BJyHzKyXJVZJFvZfhUX+m9L
	 eVALk8s2Qa3NflKH2TpsLsCT0WAyZEObO4hWoUKwOcKLF6piFytCXDfPvzW1l2T/5/
	 Xf37UJWi+QxIC0dZL7lqJgmkZcpxNu/REikbVqlWiY8dhME5AYAkjFryh3nhuC0Kpg
	 BaJDsr14+lCGWNcWsNwLabTBe2uqZCiM06wuZeRY8y8br1K14XgV0f1SUiUCrmJLTE
	 rw0f/UUFTwchzZ3hJiFU9mP5LOo9ttQFtEyzWLIreLj5fw0FGwh6w/yoE0GorrByHw
	 e9ZuPUhERydKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A38C02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173744195358.9426.16190244280146878123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44a4aafe856b7ad9e646ec54f439ab5289156ab978977037332f27d8117daf86
Date: Tue, 21 Jan 2025 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737441953

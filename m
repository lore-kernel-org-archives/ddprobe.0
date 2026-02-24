Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05A5E33EC
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 05:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771909494; cv=none; b=ClbwnO1Rqm2HwW7IjnlSTaLG2L5km5k8nTthI+IDUq5v1ZVWg/+4A4AgwV4by45txly318JFjRHxTgjAkr/PoDlulA3hHYZibU+WYHuWo+j8CivpENDQc4YOsQhLsfwdFg8f2TLmd5tiwwHcBtPQRpRNp0oNpYSWPTaJoyFTXOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771909494; c=relaxed/simple;
	bh=xmlowHa+d6oiuJeG81cuvt0oFcz5kxOQEYNRqZ5YSwM=;
	h=To:Subject:From:Message-Id:Date; b=GfnvQsLVwkcEi9y+u7ZO+v5C2EasdVQ0hW172xJCegRg6AsgPCdg8vHugtNpsKYev7LZYdqmCl1gGmGPJOK9UIFW61qUOvuZ8PW+0e2+ycetcvdk8ouDofqS5QTMkWwSnhgDYL2DidyUwAt4jlaY6Xo1UHKbQh1n82CRbDsSDe4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NZFGUFGk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NZFGUFGk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AA20C116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 05:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771909493;
	bh=xmlowHa+d6oiuJeG81cuvt0oFcz5kxOQEYNRqZ5YSwM=;
	h=To:Subject:From:Date:From;
	b=NZFGUFGk5sTXDugRIleAVazNHfRlbI0X4iexvL9CzxOM9baR6uophSAGFjAGp/HZS
	 HwFxiCyshkPHPiwCQOTv61QkquJYR48Lly6iQd0jH0Sd7E5TP0oZ8St9THdEQviUIs
	 slx6+OTdSfokf69YKcqAArFkv6P9GacJw/i0cy2UaTJL50XuL9PxsvkSCPAbjW+ZGF
	 wXk6mVKVc2igtdk8HyWzqntQBMPHKuqwqX5kc32TE8mQ5YGIFycovYCh6zcKeUv40o
	 l1V2MpL5Q99M01DzQ9X2AaFtMIMqC/KgpF3V1e8c4/e33PXNcU7vICzCiXhYHzucup
	 b37T+kX8lKGDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91427EFB7FA
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 05:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177190949358.13791.18326046478857663049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a57af6e5e4db84ae6ec26a1ee1a231a18104838907fe0b59f07dc67eed61d682
Date: Tue, 24 Feb 2026 05:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771909493

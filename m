Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 401EE249EB
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 02:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715394743; cv=none; b=GKxyMG3POiPKuBLHbyVEvpPMogksbXBhXPnIv4NAthJDZfP7b7kaQykSZ3jDlaNeMeXxGM1pPoh3uxTAS+hg/vrEMg4IKsZvgOaCiiqXRvWumvoVCL63O8nOAKKx9RyDUVfNFqwPukSb3adoQmtiVKzabb6925D4MN3jzxyzTnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715394743; c=relaxed/simple;
	bh=ItZ6gYbi/oJtLIPUoyDRiKpykJ9A/FtbQ6X/mJyHwOc=;
	h=To:Subject:From:Message-Id:Date; b=mcRP+u36Wqy55fIyJtd9eoHvIW47kI0CLoKc5iBWhuFo12HfmKF1twAXlURaAYFxSnIfDTx3LuiFwgBHJZ7ttfAA8m5ZQo6vbFlIyMVYbtu0Fayut2glDtQcr20ZXAekX3XlH+SCRQ+Q/cbHeF8m3KB18eCU13SLxqNlKgsigZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o4EtLGZn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o4EtLGZn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3F2AC113CC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 02:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715394742;
	bh=ItZ6gYbi/oJtLIPUoyDRiKpykJ9A/FtbQ6X/mJyHwOc=;
	h=To:Subject:From:Date:From;
	b=o4EtLGZnDOvYAJatjqqO2guebdhAqG/SUG7LEQeFozbT49BW1h2L1hfouk6RUKkBK
	 tfKGrpnblgejXDxrq+BblI2V59sJQgm/vIZ4n/eKSR67TB69p3VLfVVHBOkUWmSss5
	 FsKvO0ybbxFfVKGm2cv04G1+3rkgsWdIWEKuMSqFtin1s4AwLDihLfD2eySdyLLuPz
	 QAZApEoS8SQjsHuyS+NPodSXA1A9Dt1gl0tc/QW4Q1z2a6PzbGu5g1P/xzV/svuhWa
	 Xe7loN9b5fC9/lLf+lx5/DPUtXcF+8RnLT2OgLHB6ZeRnRJx23PvW5lHj0pn0m0AMN
	 rtf36uR8vDaRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEF66C25B10
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 02:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171539474277.5708.5336882980462147247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbc4f8e332c3c43773010b4085e4c6969fd2bff09f2166d77ee70210e59d5d06
Date: Sat, 11 May 2024 02:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715394742

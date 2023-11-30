Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15CB45A0F1
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 18:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QRQdfs3s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A786C433C9
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 18:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701370096;
	bh=s0S7UcnoXFkuBhgk/fhFLaDcovoVbokkOvI/6Ea9Qrg=;
	h=To:Subject:From:Date:From;
	b=QRQdfs3sELfc11bDaL+DG47L3i6ULbx/a3/NRJJ93d7wA74YeHPsbs19xwRUWc59U
	 qzeTzUb1e9ykBPuQiyMAcjfFqL6g/B/OPsWoYnoLdpMXwfDJakFAa6B1sNHEU6+xcv
	 kX7OV3FdejtHgZv1LVHQbhol3ExFUPwygznJkbHFOOER4z4KrgCCAxnfj9etFd9a0i
	 /8aoq6KHWXyvhs/BF2GpkeZjCgFMIAMLvCh4/obV65ItXuDztljXen/Z4zfH4tCZ+N
	 CUBCxsPjuNX5wApELP2jqNa+7m++Eb/17lWbXB8sIwJvDGaTUVoCBh2cQ0cNK8KKZP
	 2pSP1+nznAGZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 732BBC4167B
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 18:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170137009646.32601.3748932627006892295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3b232db79b2ff7df9a61b102e8cafd184d62de23ca1a8f813b98c7c0c84cccc
Date: Thu, 30 Nov 2023 18:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701370096

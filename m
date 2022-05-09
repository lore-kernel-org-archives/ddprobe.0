Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD3451865
	for <ddprobe@lists.linux.dev>; Mon,  9 May 2022 10:30:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652092258;
	h=To:Subject:From:Message-Id:Date;
	bh=hCnWLYaJhIw7aiydm5bQ/s34Jo59ixfvOv2ftYU5vOc=;
	b=UMDViobppEcWzWM1z/mb45N02Atb42oysUcr6tV2WVA18QmrPT5FwB72NRrjekW+
	GlvH/ZNZleRNcW6doICy32P2s5STi5oUWl1HpEwXzejXH/GEOz4t9stIeA1RAHUyqTa
	JawOUvWWuIalqT5flRIWMTOQARty/z5g0w/b1CBI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652092258;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hCnWLYaJhIw7aiydm5bQ/s34Jo59ixfvOv2ftYU5vOc=;
	b=RWFTWKomlefrqkOsabWuu7vPvAbgs7qO6NOesGuY1yPPmw2sj0kGmvARgDCisnsH
	pkYlhzJ4u23W444VYVe02Pxpf0bLd9nsdVOlmhbBFlRTvRl2czXQKpd/REQRNrKNidg
	U6m/wm1wayEDXtcyJy/D4K97IM8ND7M9H1eHSRuk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a85f47ed-2afb5b59-c549-4a56-bfd0-46106a8d5fb5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5cad8467b8c9b37b1bb2e345130276765d9d6cc1d5490a9f2b865d9294ad11eb
Date: Mon, 9 May 2022 10:30:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.09-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652092258

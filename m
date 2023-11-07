Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B70BC2DE
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 07:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hvos1k/a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B9D9C433C7
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 07:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699341496;
	bh=pbf/s0L1yaZX2t3HC51H6Oo2SiPMcYA3PChAWjFhW2I=;
	h=To:Subject:From:Date:From;
	b=hvos1k/awXGHHvc8wyZhL1auCEn/mpaIvL5268VQYZdtn/75yw6CIdSAK5JXO++2V
	 jd24VpxwefcuwJs0QeBojASd6c9Yu0YKPMCFRlSkSbAeiewFoHmh1dp7dFCXeUKa2W
	 s3TNul3EQwPCSj07MyHczrLtAHwuwdVpo2BCxSi10X7/YW6kQcUhl+NNevtIkR92/d
	 4QONzkh+08AmVsc/vTKIw7xY9G6Le2jHOQVtHRjAx3ubRFjKsNjTUn3ndtuiVZKqph
	 gJDw+9PSD8358EP97+OUCgKLRtutHY1TnbuA1CIlHxGlKm+AWtX7pHE4S5e8XB0ijj
	 vZLNOepfjwtGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6238CC4332F
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 07:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169934149639.14924.13583861316944913584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c623d1b526325223c133deb79adfc7df57609ce82b5431fd68015675ed0a7b7e
Date: Tue, 07 Nov 2023 07:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699341496

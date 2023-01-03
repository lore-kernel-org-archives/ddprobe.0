Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCE81138D
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 08:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8FCAFC433D2
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 08:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672733487;
	bh=HlUV4wyh+DzxapsWh2It73FYFIcUr0PtAMfSFX7uOAg=;
	h=To:Subject:From:Date:From;
	b=HJg7CwBzAFqLVQpmA98Gj5/Zfcl/1/i1EKw/z+8LhumCXAUSO8ny+87f8rXI337Ut
	 gPJoxk+Z1176w+TVgpWN521KQapPJyLTqTe4eC6h9jlUT0wYtwjfn0lvoprkcbFM1x
	 GnoVCIsEXRYfurq0xF4LH9Eg0+jFPrOnCAclvbZyUVeXg0ELsa84hOlEYOd03D4oFg
	 YB3qQs4z5PifrpKSrNEqrqsA4xpKfxnOk6VQY+eL5HhvD48l/3bCHot/oSEr6a3TFG
	 KckpNXZzLrkTTFWakkG3jVolCkWh0Y4IbbobFbXtvlTn4UcyNS0qw50jSlfAaFbMmf
	 b3BHK8+luoEPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76153C46467
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 08:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167273348746.13371.14376553362386365197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cee2f459a945e3884d2c025d3a5df89b34d2ff27565e8aeecb0b68458a1f6eb8
Date: Tue, 03 Jan 2023 08:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672733487

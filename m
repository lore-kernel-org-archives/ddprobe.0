Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CAD8B656
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 05:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IgsXJEQW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6816C433C7
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 05:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696830428;
	bh=EP5gU+5UwNNy6s7ebnmN3mK6QlqkLdIhwDQhRgqqViE=;
	h=To:Subject:From:Date:From;
	b=IgsXJEQWFuKmzBykhSdsmyCCGlNcPyS6PIxJplg0l67snlGH/gPWxHyewIJawhzV1
	 hAPHRPCBPK2xisJKZXkxti/Wt1DF8RrZqpuiPawvybAojyMLZa2LZnp2v/m18dfAzV
	 GYVMKr0orKmDYJm4IVmi0Ho5xJabHvLTjzLvGxxWDfWjyUaHlA5zrY4xr/VDW63wBO
	 FS8BZeQxmEOGKZZd6bQGy+MnIaNFMT5y2y2XxCF3ImJhZubfBIYEZpahdJfKocOANo
	 X31yoN1/ltdfAfJAeBG+4GR5U8+2fmgSMBaFWH7Z+JwEyDjjLipJo2zwqPeyk03Xn/
	 MnhqDct8G4xmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A51E95A8E
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 05:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169683042868.9384.8657779613429879221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40213ed30dea4f9bb69a7e9ee5926d3d5fb9e22ddf13ccc1e6ce7c24f1e6ef9c
Date: Mon, 09 Oct 2023 05:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696830428

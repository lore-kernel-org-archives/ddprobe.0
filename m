Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AE8E3FFE
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 06:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D094DC433CA
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 06:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689919328;
	bh=BHM7KdLZUJeWQdCGtBEcd2OCQRf5fPiHnaw8RgEpAIM=;
	h=To:Subject:From:Date:From;
	b=XvhtM8P5sqoNHkny49lpO0GLsUdVqX31a8dKX7h1N38vOi7Ofwp9aO1/B8Ruit0HX
	 S7CXsI4ZDIHa/BLAirbommxdU/42DVoGo9SWMUZPSWqVqRowFWxuvXMOMSfEHQBxlz
	 pXFgMxxG7VFnIWVlf/0GtFeDNANH6cac6eV1gvZnUbrVewRuu4mdoNTSLEk4Udf0lZ
	 olgivHXAmv4WqmEggIgTHaL7X0MV/TPOjtO+Y0sqK038tedAa82r7ZlmmAEFWER9lm
	 OJ1l/uEEQT7WZ/Nk1jmUBCjRz5FHoYWdZh2+oQW/Lr3tus7p2tcGGxNQ+M0PtGivag
	 LkHErMvIjKs0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5064EB64DC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 06:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168991932872.3503.17917335374723883576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8156c4c4846a63bdf93362b2bfc6e9c0d8176cdf6c87300c21f1e55c67c819fa
Date: Fri, 21 Jul 2023 06:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689919328

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE2291B78F3
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749409193; cv=none; b=WxS0Nuc42iKn43SB17WauFIPnfgEJIvpFU5/nu29PHnTxt+uz58JZNsYx844BOsTJZpu/Bv3ICDy0XmdFLoaSUD9QZ3kQYUufDGFB/yhW7t56Ey8gaHhpjn1C1TpWiXiHW3kDHgsWh5PoSjB3wj9d0OK+cJmU95bJfLKfBxSV7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749409193; c=relaxed/simple;
	bh=Y8w5QdSxodl1Ley2YuB19YdIbd8hiaYkzpfBLFg5G4Q=;
	h=To:Subject:From:Message-Id:Date; b=JDotG7Uipal+4wfIL+2ZJdDHEhLCizmoyguYSdPje/9ZSGvtyOCf+UE0U3FDYQUgIjmT5YGeepHbxynEWqiMclaZL/rNSuAwd11YUtTU/VaIR4MY1KuFYpJDkqfRv4o4J0xWbb1yZXLZLcUjxZxL+eicXwmRFuyFPY2zAEd5nW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EdfnKQQ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EdfnKQQ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A88F4C4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749409193;
	bh=Y8w5QdSxodl1Ley2YuB19YdIbd8hiaYkzpfBLFg5G4Q=;
	h=To:Subject:From:Date:From;
	b=EdfnKQQ7skjCQrLEFnPCuXR/ZDKPk9wI2ssAXKq5izR+Pd4Z+4x9bE1rsW5blTN7B
	 oQBQ3N/y449AuwIoGDEJzbCYC0Q7PnTjLrvzD645wBeuA6N66dUUs20NrUlxR5vcPg
	 qwz8LX2ebzaQTROtYe3M0nZ4M+dgNHMrWbH1EhEgRxoXnpSsLN9Y+5GHQu4UoMDtJL
	 hfkabpNu0N6PBo0JLJT1A0knwEGqwgsgyFruRnMkxZlypK1fOhgvUAXSPExqWly3Ad
	 G84+OBI9rbROLBr832uGLbQAxD8X5aRMtYucOGsYAIh1zg77El12RbkVIL6AKiEBYj
	 CO91QAzO1HwSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922B5C5B552
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174940919357.28350.16940614414493647909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 576d7d213adfa6abb15e4f98e6672726a74121f8f96e8afdcf673ac9a9d55465
Date: Sun, 08 Jun 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749409193

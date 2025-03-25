Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3172719F127
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742888394; cv=none; b=dQcHYtwOoAFgWjZAE7CLq1xKGcJc9NQzOXoVoxP2+sZ4DwRu5vNdMHDDibVGrWtx+uVEAVA2PPJHvg3GeYIAabTbCNNYLDxwL3ky8JKM0SWW3lHGTiT/xsmHW1A9xJCvIwgbPU4n5g/dUthEc3UOp/DA2VN3CGH2tZz2MCb8YE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742888394; c=relaxed/simple;
	bh=Livrq4D8/I9eZeVc3q8qQowFhQj4oETy8ekLq7VAMZA=;
	h=To:Subject:From:Message-Id:Date; b=JKArQHTmjfJ/1tfi+LlCGbRjFquYLUzOZhiVS02qn6vfSqIRaCriQa4rTMMyzTmL916ePcFH+d8jmEDv1r4aGMvC+QqL4dI+pR8pUChaK05ZqwO0c4q8Pdks2LeHyZe9XkH539Vn0BS98P3Brm9NC63UXt/omsfJR4GdqzC/xL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WA1ouPYj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WA1ouPYj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AED4AC4CEE8
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742888393;
	bh=Livrq4D8/I9eZeVc3q8qQowFhQj4oETy8ekLq7VAMZA=;
	h=To:Subject:From:Date:From;
	b=WA1ouPYja/ynZiVPyWXG9eaMQcHooB6xPJfx6J9Yv6c40SFwZ4pn+3uJSTs+h4BSw
	 PevTyocJVViM0lt8MUSeghRAaUF7Nf7Ed+rGau5z4nBw/xWK0/SgeHTOK+zc1fvHyA
	 xZuo6LSD++bzC7X5zs3RXendq2iKj+E94ZtaySSNTqijwOdZsuOhxpVXgRHwwq41Kh
	 ZsHvi4fgupQAJZD2PFr7CBWST9clD3WOaXvngVqxpWfkOaJmzThSL1++NpAc2aE65v
	 pbFcEIDElNTzUYQ88a2tIGqA6fYetTTQIjfTpAK1+mhI4X36Cl21IxaAPhyXqNkXSG
	 gKyz9Y07BCS7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938F3C36008
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174288839359.1799.7323084260556467875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1c057ee93540a33912e0abdbd274a7e336233bf83f86e4b04fe5807d64b4f1d
Date: Tue, 25 Mar 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742888393

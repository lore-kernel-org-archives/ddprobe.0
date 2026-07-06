Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CF0B1A262D
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 02:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783304914; cv=none; b=u7bVmkBV66jX/VA4hky7ylwoBDdBJo72JI3MaQHwfEN33HYdeiDYYrLNdvmBU5IkUBGUWekj0GsMHP0pEtUbwxZz1Lq2jC3tPiWtk0HCgYK+fh3FDKVXHPYFlb+nl/yZwGqI+QArpE7SkHWr5uZFn1hdiJIxLkNgnU/y98RrA1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783304914; c=relaxed/simple;
	bh=lUNheWsWA556vdinpvZ7VBslEsoooTRGcn+o0OxbM4M=;
	h=To:Subject:From:Message-Id:Date; b=iSwRf/J/iwM3Ru5Jq2gaIBBh5NjsQfd73VfVtxiGmNdz86GMxoXxjhOz8066kOGDpybdUlU0tNSZoL/yeQI5wOpjm40sITWqALVjlljbBc1Azx5199+lN7IVaxcVkd6q/sVeoXN1Sc15f4V4DvYlR6ZSwg+/xR/N03+giZom0c4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pxKN9D+x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pxKN9D+x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C95AEC2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 02:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783304913;
	bh=lUNheWsWA556vdinpvZ7VBslEsoooTRGcn+o0OxbM4M=;
	h=To:Subject:From:Date:From;
	b=pxKN9D+xtWLuWgw1QifNbd9IrRfZ3cJ72SeycqfCP5CnT9MivqhpWX7fJX7nIwIWi
	 O0cjBZiBGogV+4PuXMs2eljX+s3C1LQRA8TOvcQH/xclbesV8/OhMPPxaVoHUv83dc
	 DMQAKgvg8vbXnNI37p4KL3bsQrKN7D9H87NuIYs13N0pCqOQx/DTMcqzM9swbba0bK
	 NJRKfOKjzUmOm9tzP7k1rTqqOMpv2yENH2oX5c+hpCCSec27nQART7mle+H9qK1Eka
	 U1URq8Oawd6GTnI/Vpy89Eg7xHGvGBU9+t5GH7WF+73dUqj+M6hZPsmSZleAKMhW0n
	 VN3Xo9h+EenvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A864CC43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 02:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178330491368.11628.8778532427347535958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d01529c530e335fbaf5007bee1b580929e135583f21896f9e34bbde83393add
Date: Mon, 06 Jul 2026 02:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783304913

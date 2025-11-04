Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BBB01494CC
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762273794; cv=none; b=kHFEOMBJb7Pi0dQyd6xlZLKXtiWqGZ2VgaDmu+ofBbDnKdAgqYORfn5A+rFLYG0up76mFU6oA3dCuQoMDcrA08vAUdVwyqECjPSx5oqAVO9vXF/OF7jBH1MLXjjOwdwWZppzJ61/L9rCOFqN9jKDrNafrVQfa/4CfaYVGE/MijI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762273794; c=relaxed/simple;
	bh=g86/2Da4x/KzSsIknyqtLAaHYASx4bnBN3cVS9Q5gDo=;
	h=To:Subject:From:Message-Id:Date; b=bGfbMSCYMZ35R7B8b1kU+xdWofLY/gU8gcss0jeV3a0Dy1zC9WSYTwSW3149xSPdmzrCGlTZrNeIv9H8OVgYBXur9KriYIf5QjMOoLPGxmnmkYI5WXH+K/RgV5+NWjMfQ7cVBjhkSF1nrFyPp2IQCkx8r9G2GxaG7jB1GOmGZng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Daej1v+X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Daej1v+X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D4B7C116B1
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762273793;
	bh=g86/2Da4x/KzSsIknyqtLAaHYASx4bnBN3cVS9Q5gDo=;
	h=To:Subject:From:Date:From;
	b=Daej1v+Xf4kmTG0E503Z9JyRWaCU04UgnnMOfIb94plaqCZ9L+VVKEmOyVhmCfo/W
	 j6CbzPL6gygZkzZ7DdK/hvD/t5xjg2pOj5V+/iqSSi/Py+2e9A4IJ9xI9vHXMeLkz1
	 lHuB1Hk4wiOUAfZ8amNUGO2E7xU7tWNsxBRlscnF/TMWDj6YMFWlZI+lsVMs6ysnNN
	 ULgL9yh/tTVEbpXm49kxUNp6De1XJnwOHPl1/BrzS1m/KuihB14Y0LzmHKwb/lqqFI
	 D91RrKc0vKwcKoEnyvRMu10D9b65hN24bwBZe9oVT8fDb+3s8h66Ak94K2hd7WQL2p
	 Gee1g5VutWAdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90907CCFA04
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176227379358.31379.13142588591435209722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b617801d5384ef67baf34102c2551824c4a774a2f4633b13ca1beaf246c39520
Date: Tue, 04 Nov 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762273793

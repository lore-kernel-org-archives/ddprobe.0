Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E7741E4AE
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745788794; cv=none; b=Xf3cWAFATn2DgZIbGp5rbgm57m8Yxexr4oIhZdMlk1yoN5FU/tho9QRz3wixJU08D56utegswL1cvcV0qaMj5vVNp8TNCfskBEY6tdwTnYrs7hW/Dm2hYfwPWbATJjUc0DUaMj1SszyQJLNpix5cnRx58X+tJNKnS1z1aL7pCuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745788794; c=relaxed/simple;
	bh=Dhni5JB2hAnXyX/U7tJVT1dn9GlmYP2JC/vBabrEzSs=;
	h=To:Subject:From:Message-Id:Date; b=s0xTGcxJimscwUl8aFHvpHTvHU2kuNHXR3E+i+2oGIlfopfy9aT4dYzSLXK9oq4h26aLL9XZh/eju67hWxvXPAiERF73SzPS/+19zJ6Gljw20N8thmjJO46Xe/DxcOa4cbXfyPHMogIj4yjoyZJZZdCVC2cEgt7XTloagQT7CF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bAVwoCiC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bAVwoCiC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A99C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745788793;
	bh=Dhni5JB2hAnXyX/U7tJVT1dn9GlmYP2JC/vBabrEzSs=;
	h=To:Subject:From:Date:From;
	b=bAVwoCiCkzC1CSvq0LZsYI8mftLOsNih40kZ+NcmEZK4xAFoVVeqe0Ja1+8fwYz8M
	 cZqgatXzzB9aUmREQ0kfegXHdTi/A5NWEdY9WqD7MmIACnBtNyZ5+1bw5LIMn03P7X
	 b+lgJoaggmy1spUkT4mWOx4016w0gNmzvcTwLpkZsbvGWcm+YjBGKARUF3ugLiO3bh
	 iA3NCrWkWgtZYWuW85FF2VobC/3GcQx/SXty8vJaJoINtQ1HRPRPs8otd+F+2T4kjj
	 BXd6HWAp1TzWB3YTVfOs1+wkfycT3+Hg0CPF5ZmeX5RBj3xYK0H1cn8+kxF9Ni31wG
	 6m4nlz06dh/7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F399C369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174578879357.24353.18009154690014840016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffe7cd3d39a14ebb0db48c81cb5357a774e4eb0901ff49264ebdc0cdceeded46
Date: Sun, 27 Apr 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745788793

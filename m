Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55BBE22A80D
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786123834; cv=none; b=U6dbU5+er9G/iWf3hjfKjCfb9hldc5v6/jPldynMfQdrfXsdOrkeUTpzM7ogv9jwlvDiWFlAfSh/qJ6NqOPgbU2mCv3Lg2J6gyK1rVRGp0BjnR4QpRmCrrPVnL5zBEh0Vinps3toO+fju4fiIw/lCeODNF+dhNYe0Bhhi6HNPis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786123834; c=relaxed/simple;
	bh=HfnuCPSwFP7Op1DpfPf0ptrweRxHncaHRvlXsGcMfZE=;
	h=To:Subject:From:Message-Id:Date; b=iASyfp4eAjZ/rEFeUlM33LZ1g0HnK1JxTQ0osRq0dwcpO2WIwQKJMCyEFO+MHe14R2LBJL6wtVI7LHWoj4LYjmsnbEojsrXMlO0h6zWEgMwB7ae+6RsjA0fW7crHnH1dHgIDaLLtGXvWtDf9VmL9/uUt/xUeAUlO7Zek0Gvb9Gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lYpuOKjF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lYpuOKjF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E64A5C19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786123833;
	bh=HfnuCPSwFP7Op1DpfPf0ptrweRxHncaHRvlXsGcMfZE=;
	h=To:Subject:From:Date:From;
	b=lYpuOKjFfDhNPyq10VXMam5CVviLab+3qM5NCpsb3ROvHzUZ/Cu0NUpSt4fXX9hXY
	 frxjZaQR8l/vxrdGFvjZkj8uFD09DS14k/t8eZq7mGp74Nt8xDJb9hHhNqVDoBQNAP
	 iRi/eolvQYA2hSHmJpa5tbFG2a0kxpZiID5Sx9leXq16GZLC0IusHFN/b02fYvg0RR
	 s33de6PSq86FHPuoBFqu1Wq023fAGFUZdFLxDsLzkPSJAuEtRdOPgj4ju8W4JrUZz7
	 vvonaZZy0nbfNIDTtuRM88ynyS+LNLJCwt/LtvNUGD/Rsc+3l+NG3z1pKuPgYKGMlQ
	 JfbKA/9ra8FDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE2E4C5AC7A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178612383373.1109.14312927001370901528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a833dd740ee28f44416b5abaebd5195bc99aaa0e327e8654381dfe7558d1001b
Date: Fri, 07 Aug 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786123833

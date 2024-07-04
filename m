Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EB49143870
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 21:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720128923; cv=none; b=qO+tUIlIuqrbylYCKf0TvkVJzuEvUlmnkYXx/sbpu6DeDUM2fnHhlDzEXA/9eSM6t/HvowbQ9Fgv/evzdL2FKuGhsWRjRICfWb8DGWLTLIOk0JvsUOx7MbywpM2n0jXO9zowNDbFhb/7aAnm6bQOfkgJqTrX3TK2cIyZ+OEpH/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720128923; c=relaxed/simple;
	bh=dmOEgwW04cgMuWTcaGf2ETOEE5iqM3jO27d/Khc5zJo=;
	h=To:Subject:From:Message-Id:Date; b=SNQVD82QdzktyFsenkEHP186K4dK3TZFrPjnCChAxv98tbIz7cWYY7ZF1JZSn+Uyrj7kKFXZYy6rcMurUhr2lHufX2Zj4v/v9Kshc9s8iF9bCHfZCc65SwtSx7TdtGMk+E2rPQkWzj0Nctoa/2PARmgNxgQ/MmbeJMesTOeW8aE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DFkdyh/c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DFkdyh/c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAD84C3277B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 21:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720128922;
	bh=dmOEgwW04cgMuWTcaGf2ETOEE5iqM3jO27d/Khc5zJo=;
	h=To:Subject:From:Date:From;
	b=DFkdyh/cgvOTrwHedvbuXTWZIoaUmE5WpRO4V31/0cN4NRqTr2+Y2/8xRD+ftYZND
	 ameXv2J9fzjbyLoYJhwF+5cbolVLpvqxFRrLLsvJjIxdBWRTPLJQtVwCZhbR6NYZHn
	 Qn4A5fLox5yyVfFAIzkn+WGj7qshSyc7fHWkjvAJ2BgUZhNlEusQvcgGPAypgF/XCL
	 rqtFP5oN79f/Nbv3HrXKZDanYp2TZOc1YSqNkVastpJy6FwEHyH7pcbVzngW+oHJnw
	 SeRB15J/oF3EBWX7o3b+DDIh5WER7THPAgu50Rg1RSWVLKZbFWJoUXVx206uDyVZYl
	 sJFSCha6OlwaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0CF6C3271F
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 21:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172012892278.8509.12726272787372800750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27acc86e865ae42b608415eacfcd073fb59ffa181e371c3a91e936e8be6a98ba
Date: Thu, 04 Jul 2024 21:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720128922

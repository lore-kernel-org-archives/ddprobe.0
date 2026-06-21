Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E69E1C5F13
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 10:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782037594; cv=none; b=dWzEM9f3WwT6FeLqoVx6PFjWVyQQXonG+cDV19M/e7CsQ1M88JGb7byFe6olRYsEBqJiaYOHof5tqRw1BWA9yTYocfKNgRE59yPUuLpYrM0AO4c1pVJI50tzRTDRioiIcTr2ZZNfJHS8utWUc1ymp3SUI5oXrTSpmjsF2PwK3+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782037594; c=relaxed/simple;
	bh=V2qQe7s1lb5ZpYxkaAWo2YHlrmfCFtVDRl0AMKo3ijo=;
	h=To:Subject:From:Message-Id:Date; b=nh6mbFKi3mxdq6J930QTRLXOPMXSXBRj5TMT0pF+YeyuXGY7/4c9cDrtGt9w63gwGvCYrTrg+5+NFGa0AL3zKsibp8sUl5b1dgRi91NBdBmaH+xfkIfbU3dpnqTFqN7dmGST9MLZbqmoxKP0jj8eZlRxQ2sXTIDUA+fA3mFL0lc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nRWy23gD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nRWy23gD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2B6A5C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 10:26:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782037594;
	bh=V2qQe7s1lb5ZpYxkaAWo2YHlrmfCFtVDRl0AMKo3ijo=;
	h=To:Subject:From:Date:From;
	b=nRWy23gDeAuwb2V5UxUsX9Tes2/i1qarIAkUpCsuvTdlejwioZUUzR66gaeRPehD3
	 iXdk6X3hLF/MLzud8dR2XitlwMcPbNal0gkffb7TM/PfO8+48erpyuO2pN7eWsrXez
	 Nr2bFkGAbM9zBXsPJAiaK9fUgG0hyKCbVA64Zhchjs2343/k/mkAffMZkrql+Ukf9h
	 oRaPmEdaW6LbmJl/8OncUsurBWjAzF/ml2G1MmUwU0wZZgNuvqLzNpWKiDa6evV8LA
	 aCo9XQl8Q7MnzVwOUO/orLvZL+kDgydqiEB3DjkxLg+R0EuCXw55fk3YatLSGfSkXd
	 BvHrCuP0yFiUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E8B20CD98F2
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 10:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178203759382.7060.11688268180400510067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f99c46a15b684140bb0143e5732763d6f3abaaf5b8268355345dfffd26561a32
Date: Sun, 21 Jun 2026 10:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782037593

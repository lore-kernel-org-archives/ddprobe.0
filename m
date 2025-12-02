Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3737F204F93
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 19:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764702174; cv=none; b=qM4ll6H5/sbQUoz0nuO21kE9XB4Zi0e95cdiMLR51CxvW/iG/cJ1vrAZ6OTM3WcwaMs2cZ4SOd5g6a/AR8CC0SFm/bBVURRJHu8b+jbEbARSGMU7zBxvnDckYI3NL94PGvkF4vSfjRnwaPGmhBwMpxzNTxkm6uXoBjhsFTMxWfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764702174; c=relaxed/simple;
	bh=vYThYwPtiyTdrCXOnSKGxDDKD5tWUKOE5MGXdDcOgcU=;
	h=To:Subject:From:Message-Id:Date; b=n0JO3uY3bhxye6qbL2cY1UDtHeYZSzHJzL2TiLQLaM5BgEb7dQM8qKjDpfK5fCRyFI3eqzfqt/pY1HFxV2J8xTcZ0YxSyexAzG/xWJzb1qN65FLdYKd8rYVYX6CDEaGfc5/9zVeQlQJm7mynDjYVXMolIhkZ7nSvOsQpP6eHPmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e6ZK3+GP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e6ZK3+GP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC2BEC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 19:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764702173;
	bh=vYThYwPtiyTdrCXOnSKGxDDKD5tWUKOE5MGXdDcOgcU=;
	h=To:Subject:From:Date:From;
	b=e6ZK3+GP/NspB9NnnN9qWryWDKn5VxlEPLKXHYBmMuYRVFDyNLD4vXCvAIj1O7s/Q
	 i/VJtFf1LjzRQ99mQrtCIooUoQuAJ39dOyMIv2fE42HGo5Tsz8H7/d2+3FaciA4var
	 nSlj+acR004czrRXi44ekj73fVDXgqZi17GFPsOt3MNAzBZEbzXswEbDi//lApQ+iF
	 R+3Q9fmMnydY4PqPIZgyLR12qdN9UqZw/+uRNPJ0UzX/YhqQ//ODBLC7UtSDSNtdfo
	 W+SoPOl3fMW2L+vEB7pebOBkn7N/t3/7ZGSo3DV/NRg0WGj8TOlPX47mj2L+0xDf+F
	 j8Vkc6Egp9iCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 985B5D12668
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 19:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176470217361.26228.3670915012505673410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 640552b755c617a90942b904286576ff5c79c7963bafd326a2f27070a1293b70
Date: Tue, 02 Dec 2025 19:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764702173

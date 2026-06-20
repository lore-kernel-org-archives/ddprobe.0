Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EA673451C1
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 23:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781997394; cv=none; b=eslfqYimU/2NqmXoJvNe+tg6IX8iYCYy6FWWDrPHACCiVxXjjjycFD4jJABiGky/G3594gCQkUEOdwQctNcUV9mHagw4ndnUpiA/BBm47/Tr1aLMQfz4up1yICbLYkjTQ8oTa6k8bolszA/PLrJPmJ4NhQ5xnxusutwksZ/J6IQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781997394; c=relaxed/simple;
	bh=BbXMLqurNqOtI44K3hmZEaFzSo0gZP6B5Rtf5DME1o4=;
	h=To:Subject:From:Message-Id:Date; b=GgEUsmP6pKoJc1nt18XPkC0+tHckCbB+WneaAXyxYyQ0RjA+VhMi70A8yFTRw/YSLdNv48dT8ZtiRVXdNR72QEl016wMJznvECjQQVXeAn4hOlVHurEX7qDAcK8Frnp+n3AnVAc1uADbPlILC1UWA5JHx9sY6LZPXeutoAkCERA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Toh1AkvS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Toh1AkvS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAE84C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 23:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781997394;
	bh=BbXMLqurNqOtI44K3hmZEaFzSo0gZP6B5Rtf5DME1o4=;
	h=To:Subject:From:Date:From;
	b=Toh1AkvS8U0w+lB5MqDGA5Qqe64y94T7DYsjqHnVk18GKQqRRNo7kSfCfIcF8mTAU
	 M5C4gljAx7Mzl0MIsB5e/28PZUNAcukskGmJ4fOADhY6fxLm2u+MY9dQ1px1rzxxMx
	 7/rFjOftkhmcn+BBCcDb6i/g5ZX+UkUE/uPPlfCe67yGy8HBs0uUCv9Rsa09QmtCFn
	 c/nNGItT+vY+uTelcFw9B2wQverx7+tjeyTUSFfNFfJMGzAIMvcv04tliSGDaDIGWd
	 iFKQJNIs3U3HtLwvNbELo/F89Per91986j6+VhOqfhWQj23gQ48txYsJlG7rqTuwke
	 P9gyKbaJGAqFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA4E6CD4F26
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 23:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178199739374.10930.4329637296041437323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 678261a9bd521ca6e09b476ae4caf5351541c854dc8406ae6a2ab272ed6eca17
Date: Sat, 20 Jun 2026 23:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781997393

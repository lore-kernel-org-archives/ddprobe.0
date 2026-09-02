Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49CBE1DDC1B
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788357634; cv=none; b=Yz30bq0xEbVnLr42cYOYKfe5eXaryXWV2hw87eI0tHErv3Mjsl9VDb6ehJg3+y18LqBczlcWxVRfxKHun6dbk+BJxP9lv8YZlBeIE4OCr8yXCO2mQuL3mO8Jr0ihrYgGOAv3tA/0gHCa2gKoTn6kWdWuW+lwiikwNAJa1DCdMI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788357634; c=relaxed/simple;
	bh=dfPVt+HjHDFunrLO9ENMLM/K8f99tM6U0XIwZUpefVE=;
	h=To:Subject:From:Message-Id:Date; b=ogS9cGlvfE5NDhcfRvfItIx6l+FROhbk/WmJvQh0O3CR2xSY0Zfgc6ktmJNcz5XPX9Vdps+SZFuVURgE14kHwRQ+KUx/EwBcTy1uT1xeRLSBTsEZmuqWE7UdqseeX4R4v/eJqUQaTKlcG9qzYToa1XzNKWVTLNrkpHViezCFwtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uzjr2F1O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uzjr2F1O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE5C7C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788357633;
	bh=dfPVt+HjHDFunrLO9ENMLM/K8f99tM6U0XIwZUpefVE=;
	h=To:Subject:From:Date:From;
	b=uzjr2F1OkTAq0OV9ASo4+66y0yBANyYv8+ryqDro88Uc8+Z71zTRFS3Lk0+AlVhBr
	 Fkql+bWuoK03ODsMbjVCPUZHTH8A3hmgSZezEQ3DhsYW4zAkQXUFsp9/NjWnYxOc1m
	 9a8UF+BEttLKA3xgfYjMe3yEI6VPe2bH66pE1o9tIRI47prRx27y37dAz8BHLClMos
	 0Y9tOEYGtxqjYxSJuIVPAmCi9KGZaWuxq2iOsIv72KCn32vB8T39W+xvXSVKsqrvKQ
	 27rGXiKkKNEF5Zs4/x9PAWQaqHaSEpqmzVMycwYELPcvciJ7OWQBkSenF5JaROFocB
	 iZ+Iuc3xb4LOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D44C624D3
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178835763368.31360.246073855397436958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b773e053af89fea87314de478125c6a87c498fc89583a9219b65be81141aba4a
Date: Wed, 02 Sep 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788357633

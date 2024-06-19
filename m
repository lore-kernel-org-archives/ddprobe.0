Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67D0C1802E
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 15:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718811563; cv=none; b=D3/RdeY9Yvkf/F/J1LRsF4xN094zZr+7jM7AiZD0Wmq9mQtvdgxgHhqPDes8l6TOt2UsESnd8MfYsO6zivVkbobfbVaAE8wNmPWVO2GEoT1Z+nnzuqoOLloXE7vyLZBC0kNP/dBCA0sC5xvseAuwSYSoTZSO3ryk1aVXaX3+jus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718811563; c=relaxed/simple;
	bh=0tIDHY6lNfumTLR74e+HLbCAVJriFCrQeR+nOy3rdQs=;
	h=To:Subject:From:Message-Id:Date; b=ixHpwHmislhG8KPGfqLDVHW4aWFuZgLwQHs3ONIG7aPd4u9PHw+Q3AMJrHFULjM0K1yAtTM/Nfcg4tjH9IXIjBOBk/elbi/hOHOe6/dRcpjb//HaNf+L62yvFHO+CPXOTh8nTSiXdCxs2WrlxoPrHDzhFR+sxoZ+apj4eQO7N+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G2hheh5a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G2hheh5a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F21F4C2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 15:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718811563;
	bh=0tIDHY6lNfumTLR74e+HLbCAVJriFCrQeR+nOy3rdQs=;
	h=To:Subject:From:Date:From;
	b=G2hheh5ah6awdMtcMoPEIwk96nLr5rMo8RX61SmcgSXGBkGFttcRCaNi3pG4k49zA
	 4icp9BCDTJRirfNP1s3h2B9AJmFdi7xGpZUMHDV/TkzSIV/++fq9ASMFzI/KrOwsZa
	 LqXKPMMlcvugk4vV8FgGXHBqKwxt4R9Pyb3/Va7HkidAjRRR8AM+DT8YpVuS1g+l33
	 TseCNKuvNRU09BA8BfjQiC6NikbWJAYYnmduVdAMusLHlV1Sf5HS2aLTuE+ted9ecC
	 ssjENkwOEVaDarpSaYSArxNTcICOnS7oM2q09eDkHtdZSCi5HHlo+vGZGjA3mRmRJy
	 tqMHKYP+NbGrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D76C2C27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 15:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171881156286.21206.18426523354400785482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3f123d8da5eaf445f17f8011fa2001f228e57fd05e9aef61e84f0165c3f8d33
Date: Wed, 19 Jun 2024 15:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718811562

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 128148F5B
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 07:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768982034; cv=none; b=jxpvqX68ipUf5KYGOqyarQxVJUm1Qw4R25u4TBXopvm6CyCmEXkAuSeIAiqsX3Wi/0pfSoWJVVYso8eWZS/9cvblXxZQE8IjffnZAAvbgY4dEduorPtYD/NERprLHSRv8IbYoPf1S4zHSki9KJs6poJqyM9NW4Qq3oKXgN1JK5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768982034; c=relaxed/simple;
	bh=1VqWac/CBjL23JLO3hPIKHlZNcLx9BTqBysN9ueZPnc=;
	h=To:Subject:From:Message-Id:Date; b=ZoLFh7aI7Pcaw3JW7L3UXk/fBxPSVVaDBbzLBnILRZFuaFWRS9q2sJK15VF7PIueZ4s2B92JTcGWMDK5f5Lj7QOaXdJYlqw2dMW+ShGVtYGQPbu9ThFABGHm4NlxmeuI8PkbPsNO76nh8zLXf0Hiz4fYvi3brNWyLYezwUT2nvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dPpUlxke; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dPpUlxke"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A527DC16AAE
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 07:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768982033;
	bh=1VqWac/CBjL23JLO3hPIKHlZNcLx9BTqBysN9ueZPnc=;
	h=To:Subject:From:Date:From;
	b=dPpUlxkeeIoMOT+f1NnPJnTsU0PAqZQPm2FFkoYOBKXU3pb7kpKGKDBDY4MMjPR8S
	 C+t5EDep0G74r2WLoIrF3c2yMbzJE1ZSAkxhbE8jQxWs+iv9EViMc6ePATalrQxRUl
	 53ukeufH/Ke8ecrw+TFqpntoozZmYmXAWlFuzetoQLQOhXi3pHwwu/LwP4HZBMrb3J
	 31V6KmAtsHeHPvZwnV7DcpsZUNXJjoIKFfzYPAKRJQU2Bpi04Iu+FnQV15IYnellUd
	 r3GBp0Lhl9bqdodj6iB0Vmr5p09ZOkXSWHww4hHnFiW3PciD1g2uhcPbtC/CTrHgUS
	 /A1TOnsMqRWbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95302D262B2
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 07:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176898203359.13025.1968716792261893574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 251ce27e297dc75bddacaa7b786fdec73cc0c2289d35cf50a587858871b18394
Date: Wed, 21 Jan 2026 07:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768982033

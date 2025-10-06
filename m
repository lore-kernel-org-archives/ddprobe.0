Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 213191C8630
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759772394; cv=none; b=J0Ljeaz2ikdrsXXgREeD3uCYwnTplBtoZWgDUI5RJo4met1ldH7Dip30dFPrFczZyPwXryeJXOfLqN16IAyF/PB4xvxs9p7he65AdNOcmJfBYP4Rq8u1YuO+TUJ7unLd3ykM2CX9+pMs2uCnR2rAyQiAB3Pesa3+21AzNCr/reU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759772394; c=relaxed/simple;
	bh=wc/y91SBZmobs1722VpIaqkgVhj2dICObQtl8HwElHE=;
	h=To:Subject:From:Message-Id:Date; b=XzCsN/6Y1QMoCWXJ2rHjHH5+Ff0w7diAHUSAG1VRq7slCpV4VdrDI2vkLRUTnMFepYhRhYTUe79kNHImH6YQlY6j3rYp+yR7ujr2lRVwx5o3gcyKNhWywoe4/8mVbH9bJlvm7R5cgRDIeEjWb9uisg9W4mWATYgonUivPN/Q6CY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eSeZv7zE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eSeZv7zE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA90C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759772393;
	bh=wc/y91SBZmobs1722VpIaqkgVhj2dICObQtl8HwElHE=;
	h=To:Subject:From:Date:From;
	b=eSeZv7zEeIrnjLFvlGhStkEG4HaiSb80DXRRm62CjmzZjxr9hbC/CKvFVM1J3DV0N
	 MILdjAQnqCUs/XVpvXTD1hiJel7qf1nD7zNpbHXpzMA/3KoVogryoKPuIbcl3GRTDZ
	 BCJNNS8LBuNRxOS7F08AgH7K/i3RXGK2GytS2u1sf7n6+9e96+4fA6BzrfrJ/3acTx
	 yHQjcdG8sVJVk4euUqwKHGhQD9OQVQqJ9SHrV/E3pcqjwKuWcd8Js58GgufXaZ6Fao
	 czdUtLTioBQ/Qt6WXMV9QTd2wP7s4gSaH0LQKYGv6FZ4qC40u2oQIcEMS+L1BWEKWe
	 z6t1aXjDGRiVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF86CAC5B8
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175977239357.21238.7922356023302427220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d27204079a8facaf40d6910bae245127c8d62009c089a1b258252b2ddd898550
Date: Mon, 06 Oct 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759772393

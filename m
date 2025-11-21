Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 196112F261C
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 05:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763703714; cv=none; b=a6TJWO7IHs18zG4wk3Zb0p4okEIOnF5DejCjDbmkqmsBbyk1nfGEh48oFqIqO6biIr0G/7p4W6FWbNFZHFmp/8Xw0bHRioTF41/Pzf/Octm4VWpv7HuBt1iQEKx0j7pI0iW1LyqZivhHLcf7dLeyKVpOF1XIRCNqqvRMmvhAKk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763703714; c=relaxed/simple;
	bh=A3HTzamgrhpzJfobxyEAS0wT6tmcZ2kU4r3iw4xmAeU=;
	h=To:Subject:From:Message-Id:Date; b=gvXA8s0gWGqs/H2SC21JipgFE0WqRuNBd81M0LxKcyO2JPV3jV2vTUyIGADhvXsZqKmLf6/h7qFYKrLAwthV0p+gns6P2ESqukhpJ+eCgmjnFZKA5Jyd/brp+3XI/3pYRQB3jUAtSzcG378/MkWZ9d8XMT6ClRWKtgKhYvss0vA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JmdUavbm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JmdUavbm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78B6C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 05:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763703713;
	bh=A3HTzamgrhpzJfobxyEAS0wT6tmcZ2kU4r3iw4xmAeU=;
	h=To:Subject:From:Date:From;
	b=JmdUavbmTMoDg9YwA06LgRccWJAa6n/X3GIjpQVEwW1Byf0RcR+TnKbPKPGc3ljic
	 3vT6MnBO428Hu0dt/vQcxFlxC0+XAjTFxvQVTQUSFcs/hBCE5CYCUIh29FVgrf4kjB
	 sBnSWxPVQ05pBoax1FCJzfCiAb6QhS+QW4pXrSwxsN2aWTIaDUsf2A2b5IXzCGi/EG
	 IYd2xaBMC37ryaTeb+VX9f9Ps4ASQ7dhb2IrOtdPCLMHgSQ3dlDFSsBnru0+VGvrgi
	 sl3xjfa9jNuIFz8poPGgi4KNEWaWYgozFKWG21iQtDMbKjKLltbYU/6rL72Z6Dk0JO
	 A1tpFxr//ihcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9585DCFA474
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 05:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176370371360.29058.9700072210522887638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 072bf434a092ec049d430df742ab8264edbff66bc43991c8ef10db424d1dc53f
Date: Fri, 21 Nov 2025 05:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763703713

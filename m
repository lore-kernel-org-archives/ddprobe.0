Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD9C22A4EA
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747060794; cv=none; b=MNMWPddAsoEXHjhc/zfUYdnMzfZ1qOWF5h8ZwYHAYBV7BfrV6jHHu/Am1s9SyW9EDPbqpG2pwWODnT3VR4LmohCoI8GXAUCRQvQmDVbhD0hvVH3h876jVrAStZzaVtGsxieVWSEE/RPff/p/1El/NN0SDV6uiu7yzTHMl6TKYs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747060794; c=relaxed/simple;
	bh=fyykITyBEqe3sF6tO6UODZiurNp9mfEBN4fC877sh2M=;
	h=To:Subject:From:Message-Id:Date; b=rV/hkrvJ5Ha30cH0bJ0soub0BhAsRaQRWUDCDgO3huFvLv1JFhSrW52JjUcLRv/cITpIEizaDMuGStE1i50E4BcpQfKJyiYWXCPbe4Swcn9z4BpGGYhd7fkypqLuOAfTdcPkRdEDbRKx5HlsNIDFHpPvdN0x2uK9SOQNQhe6XW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GDCQ74+g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GDCQ74+g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40EBC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747060793;
	bh=fyykITyBEqe3sF6tO6UODZiurNp9mfEBN4fC877sh2M=;
	h=To:Subject:From:Date:From;
	b=GDCQ74+gzvrxK6JahT73Pz3sDoe5TDuYIqM0qeJA+PJ+7NBuI3CGxC1+Wm0xIt6lj
	 KRao9cHZFIJAIKYe1RRZxQDahciZKnk4nifWUDBUj2hsXBMF26NwAGa2cTmk0GBtz2
	 E+5OivHMRCa1qlxxmUPusrUlrsw4MT4IsF4p5xhDLytTNdGO/+hIe95OEl5GhsKhsM
	 UoKJqb9ESi01QIYSK3ABqw5MRP4tSnH4XkLYEAi1KV1v+ufcgnLmzrdU/ceTfRyKMK
	 yEZym2rqr12l7pkVxNjx11sHiMXu1irukJG0ZeiXVBcxE5y+AX2LjBuX+dOHXSUXQp
	 Us1A6bl/H1p0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90881C3ABD4
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174706079358.28114.17113524572890164628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bae6c1f7aac365f7b8dc17b1bc6915942fc89fdec94789409b824c4dce25873b
Date: Mon, 12 May 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747060793

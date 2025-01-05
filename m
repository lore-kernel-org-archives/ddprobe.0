Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EB131D619D
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 18:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736100954; cv=none; b=NemoLnvMruogSjwUSVY0bjXNyaYkMms2SoVxUGvLNVHf93lZCRqqbRTFHSvDcF5V4ORWx0AUMYstScOZVOWLISud8yfS0KhLi3j2uAXhbz1lhMOEEeOd9MZxkPo6KmWDEP4VuyLZuQ9JHxiF0pORZBGoUukbJRI9kpj/0kDyJz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736100954; c=relaxed/simple;
	bh=CbGbqKCc3GQQbwrtx87MzrMC+oh/HilMcaLOVKJRWoE=;
	h=To:Subject:From:Message-Id:Date; b=LreVMF42Kq+zimbn0U2OmoE72HHKuqpmdMkZgag5Id+iTv7N98UWF13K9ZsAkdnVm9f2HTeekbzKktqUJlP+GGaPJHFrkj+x9OF/BfBScf8XqFOFKvOO47ajPVWW211eaYSq8EMOQhqVfSnJ9oofDpTMs36i9erEaZ2FNXLZTYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O5ywsFwg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O5ywsFwg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C58D3C4CEDD
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736100953;
	bh=CbGbqKCc3GQQbwrtx87MzrMC+oh/HilMcaLOVKJRWoE=;
	h=To:Subject:From:Date:From;
	b=O5ywsFwg/uDk7wVGHtxLf6Wy/zAMZapIm7Kq2IYdXkc75hwSCvzcio07cxcqRsuGV
	 S5Nmdb8kbSQca9QlZiEXOMUqVIuok2qs0GzzVDlmbhnPE7NzGdAuYWpCWgyG5dlAyE
	 8rJlOYZkl/8hCVdaGweY+v665hahSnG+ffIgPd2XXXnIYMCKSftVtcRVMe5IAXD2nj
	 UPGN4GpuwxvSEfpk+9j5mhfPS/uwbRaa53qCGJtWtW43yBPOia0JzCVdYvhz8XFw54
	 G+IXoSzqUL1ZrG2CJ+SsEGANqmtwKBtsJMeVB/G2tiET43AK7CGZ8F4XOEDVwZrfj1
	 gCZWTMEExHPRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7BA1E77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173610095364.6649.6566489710410283804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59470a42df0fccc62c7487bc90f1f2097a649133195784e2dc7de741d34a3431
Date: Sun, 05 Jan 2025 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736100953

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 398FA231848
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 02:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746759595; cv=none; b=RwmKmUpSnSe9gjiG2UbFVaZRLnK64ulgYnyhhfGzNnHk5xJoDMeboNIFSFRbcjI/N9OxoX1Oj0wJbs/cW2KoCdO8iqbQSlYciZw7qOTgn+J+Bb9mk1siNIDmZU9f6dinXk7EhL0ygvqPtoxgqz9tTNuHCMLTvw0pMOQufE230WM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746759595; c=relaxed/simple;
	bh=DUqDkuX1WzYrkYjBmKw37z43dVzKE+M1fkkbuiZ+l0E=;
	h=To:Subject:From:Message-Id:Date; b=uMGOJgnjV7Yo20F6T2Kdw5c2FmbpZphCo3y2oRjdxbTS07fdD3Snplt4rbNu19x8zdpNr/7yq8UUcHvkY/rBVm8sCD0x1IAARuceu+2v6YZ3PZMPrDd3YYXt6ImNcI86Q8f2iJUy8UNOHfMs3gDxnErrt297rEI/qs/spKkcTrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S9dB4N2a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S9dB4N2a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1622C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746759594;
	bh=DUqDkuX1WzYrkYjBmKw37z43dVzKE+M1fkkbuiZ+l0E=;
	h=To:Subject:From:Date:From;
	b=S9dB4N2aUwGsHc5AKA5f1KhLrpnKFt4HAXXiHumhqjnqO9qamzqz2yO0g87AIG2Mb
	 oyl1l06WmbxsDNSMpjyJAPFWQ+n7mKOCos5Gpth4tsspv4a+S2jilq2gDg07cXYOBT
	 4kkTEgkjvPlI62J7XM22Yp37LyyhN232mdKxZllKSCbV0s24UIOTdHVcgPwReITDKn
	 LVx1cz5hPqoPjfcDwRYCpbuVuZoN9LO/q0pJBoc8iAshPicKb7yqCHSdTA0ZAa0v+M
	 5MSBroPCTOTiI4WI7g2i8pJElQtulR9kbZ6PXY/x7RWP1ZuIYD0199GvRiJHa4kMCc
	 5MHHMib877ANg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F53EC3ABC5
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174675959357.29190.8224240972981741204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef8ebd4b2ebb3705cade8445dec4f7185e9c9b96be360ba6f029809bc11bef2f
Date: Fri, 09 May 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746759593

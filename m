Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B7B62BCF5
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 21:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763933514; cv=none; b=Fnp5gd7UzBgwvzccSeJBGupMAOdeirgEQBXdOG9eMobdRCugfViqkFEA0b/+o7RsAazvzZ2BTnQGBKSG87KHyd/ddcUItkUZrUq0bIWoofsR0x3UzAjkI2EWld7xz9Io0rG6UTGxxffsqs4CKpOy0SqfEwBTiCstKmWgg62uEeo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763933514; c=relaxed/simple;
	bh=lNNtKhpumiSAqPcjQCWM9aEVTwE5hT8Lh1GRSxSJ3xQ=;
	h=To:Subject:From:Message-Id:Date; b=DbWHrdoMTwYgWZII1g38G7xuz7zpTVVzEQ/5yKPVtkRqt37pZUejK/YiRT1+yPL3L4QHcut32KKmDaW8ES9tNyLIxuegsIXXTegol/tcCFm1Y3U7JiQCJQOsEFCjntaLXba1hqHMCWnGxEGDn717RD1mDcWtXgrpesG8aMYXgiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bS+5qYmg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bS+5qYmg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC3B0C113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 21:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763933513;
	bh=lNNtKhpumiSAqPcjQCWM9aEVTwE5hT8Lh1GRSxSJ3xQ=;
	h=To:Subject:From:Date:From;
	b=bS+5qYmgHrJ8znsr06DkHpviC2TsROI2z8hKzAfFpaXTVT89LcWDZTKB35XEofAgl
	 wVLaubLiYvf42IJMD91i/vHdM45d4F4ePqyvGKU8da8j03/XSCW2v3tETBmFuYELWs
	 9DjDZEAI5XtbRSwDNfD/XDLtG9UA4EPqCugfWm3m2XS7c7LM3OQ96x3E1Yhu+rZlXr
	 0hWBtaTTR2TXMzMX5FuP3BH3Rvbprjd2tNEqJvcAgzf1e7uj7vlPIldH7hFHzCnfPp
	 5kXTvLjV8T/Y6nSoh1TwkdyWd9pIHs7EVJUDH897rhSSYKs2eG3tJFKBMhQ30ffZNm
	 yssDqhEBenr6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7AD1CFD316
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 21:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176393351371.24357.9328212415059547338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24001987a76d2557be16fb6ac82cbe8ba5730283545e71245d06876ed5ca45d8
Date: Sun, 23 Nov 2025 21:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763933513

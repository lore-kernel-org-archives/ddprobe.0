Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 669B32ECE86
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790917234; cv=none; b=eDj6T5qk/hPrJR5GT9xxJax2xQ6WKs1oRPHFDngJ9jd1RWg2MnBFZlfGRoucWgzXovLwXHtM7KsoBEr01MntHs1u51+yZ6CuWS33iEkjABL8NfRVQeAK9JsT0T3Z8Kzv+OCtBa+B06dOpLch2KNPgS1I25zeeHgohUkKKfSGno0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790917234; c=relaxed/simple;
	bh=ZYouuOmnzvhxQyZYDxIm0olWW02/+eqcIHbZu53u0dY=;
	h=To:Subject:From:Message-Id:Date; b=KilqOU1W0cFBn6HW4gP6585jPFCEjrjrwdmNwOWHqEJX4a2qf/qSQJgq9yKqgY71lxEr8hj8qMFsb7TOwod8CjAEWCeTEpehD9/Q8RADiVqQ9sN8pXKhV1b1SvRbD1G0XUtZJ2J+EalUOYM2PnNSpmwydtRlReXSvefbX+6FfyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sldLbMkF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sldLbMkF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1742C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790917233;
	bh=ZYouuOmnzvhxQyZYDxIm0olWW02/+eqcIHbZu53u0dY=;
	h=To:Subject:From:Date:From;
	b=sldLbMkFIjrdI6Rk+j5DEvjqCD+Fs5d0flpBAoYDi2U57f6J3NUZztakRk82D2Nsn
	 63N/eGFoEqrXAECVGh+bXM5/GgRxOdiCRDS4EKNvA6voKs7UFc9lZFTV7VADx4MzxF
	 cahUtCXpWQV6qcBXdtd1fF45ngckMQ88dwzPDJEil6EEFAGuMu0qSN6eTUcyriOigG
	 kxR6b/6nSi2cR7RR3tHoQyEUCZFpoPQv/nQ3Ppa802/xe3oIARI2tm3fn6wvPiYj9Q
	 GRE8MHedfS/Y9Q231NhV9QTdVgGWNJnHWEGFzF9FHw8mwukNAqQB9xSFhaZl/JkOUS
	 owEbys6J+Iplw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF0F0CA5FD4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179091723368.12823.7965465773019181639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4784aba8528da39997a30fb1e31fbd2fab332347b2f91900626b427ebe46960
Date: Fri, 02 Oct 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790917233

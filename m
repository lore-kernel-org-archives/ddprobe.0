Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 021442A1BF
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 10:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772447694; cv=none; b=hDDXHDKtF2wSiKFmkQ9cXECHfYhX8NuVA/GscPl1Eyl3Rw1KRjdCzn/q7MHbmQOjhC99azo+/XHMqmt4ndaCr9exTfV5MkiR6d+RVhBKe9mZ09rSk4CFiwdlDL59GbSM12ySzd05gashXEXgHjp3XtbBwI76eq1Xl/r5MurkPdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772447694; c=relaxed/simple;
	bh=bxoLFBrX3kRh7IaEqsVPvpZUchR7r/kV/8d1y9My9XY=;
	h=To:Subject:From:Message-Id:Date; b=P23WKzJl0IV8hf5sfilGniTHO6e8t9DwukgrufsRsbfj2+uZ1pmo90FSJK2J+3tODd52YPicQ95MHJz5mqSseEiASkzi0DEZoaXnP2jkCthQM79LIzz268KRb5v1cE4fRYpK8IxuNXSgQwRV2cN4Ub7de9yTlAyTQ2SXDVaV9Mw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AeDRs+G5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AeDRs+G5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6355C19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 10:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772447693;
	bh=bxoLFBrX3kRh7IaEqsVPvpZUchR7r/kV/8d1y9My9XY=;
	h=To:Subject:From:Date:From;
	b=AeDRs+G5R2xCLLn3pcQQj93uV8e9d5WM+u+r36vt2DasYoh19cFchiMB6cH0uASxk
	 kCJNS+IfYoTPfBESle4y67rpk1qHJyvj4g3CGuRIhi/8NhEhdtelepoyuqrPBDlL1t
	 5EBJoiiJ+AYN9uMk2vaOf1JCyLqWjuP86DxcKoKKcuFH4gD2qkgvvLi1E9tXMEqDwA
	 SnjptmIVgH/EIdk81xwK7RUKOVTfa+e1D9i4I7paEd+FpX4Si5vpRmzGhLwhYC0l1W
	 A4XUR7r7k2bmrmhA//KrXZRCWgJi+QvjXEh3nt4o4EmujW+bP2NzyFEf3ju20LPb2y
	 QdJrh9484LSOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9502EE9B342
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 10:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177244769360.9713.9014701057684490008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52cf54a4177e5b8909298a1ba95e663128e665baea4f9d130dfb4259b1e68d75
Date: Mon, 02 Mar 2026 10:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772447693

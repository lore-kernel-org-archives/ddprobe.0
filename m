Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E44F1EEA49
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779157834; cv=none; b=TwezdLKEFgbg8UuTkTDwJjEiq2wGTQmEeWJDQxmCWQRAFpIxBCBJEWvn84c4hHv49KGBC1JJ2IWeEKX7/mCij4C49lG1lce+7hJ9vNRiZZOknhYtR9MDuc2Xxng7YVKonAsfxaRfiZAJpxTIFEekJrfOln9yTXimVA7IPIs1G44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779157834; c=relaxed/simple;
	bh=8AdGpZIiCmjpfiQn+zUhCHAc38FRN95kroG2JfKgrPs=;
	h=To:Subject:From:Message-Id:Date; b=dzeSqCQyAB04MZlVJFZXl9Nluo0s1mwhvoVEZY9lVcDdKo/0xg1G6+krk6m86oQpMmkifrkXUL2/rpJ2xCAWcdcEUnsACvzWmKro5/ZsGR6hH/kJd1AyZjZtY/oiH4LfUboMrnt0bqeY/hLB5c/HKIRm4C4/K8QPD680LaAAgsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F8K0eRVf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F8K0eRVf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3C7B3C2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 02:30:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779157834;
	bh=8AdGpZIiCmjpfiQn+zUhCHAc38FRN95kroG2JfKgrPs=;
	h=To:Subject:From:Date:From;
	b=F8K0eRVf6sy0B3Z2Kq29O77dsqHZ50Fy+ignMSIa3eJDLi8wBJqnOv6n0SzP4JhrE
	 fZu/XP2Z0XVrZZJKTRQpre9jZLx/7Ai6/7N4dfAl1E7SMbap8c4cHgNuIkVjAFPCv/
	 UMNGJlZTROpYn5/JtAt7g1e6DWevvtDcabJxfXXJcM57vVguS/dZ21+GwaR/Snsd1p
	 uI93r5B5p0Hg6ImDbCNedkelOccAgW6t+qj6ByLPEM7ZgCjbTHOjPXPHiZ4u2qfOM8
	 WTKh02x6Jw6tRHCm7BMZUrIiJ4yFlEGivqc1+W8vdQcSoj6E7DTw5VyEY4d9Vq3qvI
	 PS1KE5QdAPRIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0BFEECD4F3C
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177915783392.10564.7794473606875877050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5201143c318579bee3364d07e6e04b1700a8e0050134d337a225225f5b157fcd
Date: Tue, 19 May 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779157833

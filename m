Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DDC52E8DF0
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755748794; cv=none; b=tUHUP1pHJ7ygxnWIq+SOZYDWFlu7dEk8LsQVymHs7xK5nys6qhFpi608uGkqMNjJRH2wHZsPpufbTxtz3/O0zCxwJ6dtDXNjRIcN/So3zdSlI1cL0npxZT1uTQyWS3dkMIO2rY9D5/FkR7DWKNf35pGWJsxsNnuMXbnAZ3fanCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755748794; c=relaxed/simple;
	bh=jWl2WUPvI6zO1aSiiZDQufHNMBkJ551XC1/1+OABjvY=;
	h=To:Subject:From:Message-Id:Date; b=dkmRe5fjIV/D6U4+VzBbFzXtHnXumktu66zCeqR5f7rOgXzpWVh4exUUiCNYk487Euo65JW8q4+5bGpi9T2rb7WdqwLVg1u2jyUQU2N7PZrXPG13G7dJcOPLtYx5xKlWQ7xjwoe3NSrzaDgIxUpljC2/9Ib+yqfJzN41KzFmYSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=amI9H5CW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="amI9H5CW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BDBFC113CF
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755748793;
	bh=jWl2WUPvI6zO1aSiiZDQufHNMBkJ551XC1/1+OABjvY=;
	h=To:Subject:From:Date:From;
	b=amI9H5CWEnIrp0cvreDeAQlthsVTx5jkp3Z3zz/qQG31wOCoU6PbuhCq7ZC+wDNo/
	 r4rX2FAVRL0bqq/S7r7ckSznHQmHs9tpJEguUxLF2xpmd6g8dflCKc8YsaBGFoFF8P
	 6y4z4CEjxT1yeGIfG0v7EYeMYaZnFaMlHNiIoNvRvfqxID5SttkOedHQsgjZV8kM+t
	 wxXJYXU2VthXWT6S56j7icnp9bzVRk8a94Zw3XxIpoSFh0AjyfjK6QuV8rD1I/byql
	 Mrit29BF0M2BM7GAn4Pp8pnugKh9YC8I6+PMb0MGp9D6dStkgS1b8hvaBkTcdXkFd4
	 VJ9Al4BBs3dsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E1ECCA0EE6
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175574879357.3780.13057031884505929770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e8a67f0cfaa0e1000f060a3388fd1c2d37e9413d25dcec4ccd7cda1732e3465
Date: Thu, 21 Aug 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755748793

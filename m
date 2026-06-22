Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3318235677D
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 06:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782111394; cv=none; b=fUSsLRvvp+hlM04rd6rdpxKHYyUI2oYRFGIodvp9mu0hUxVeEAensDES68/jtRzCSiDh5S/CVBHRRf7b+OdIQn1RuI2js/BivmR4TYqgheLo6clq9ADnyzIo4CuOzJ9H6YKuiCGC1OC2Vt57NSqh6WYcQyIci5J79Vc9T/BM1jI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782111394; c=relaxed/simple;
	bh=4+XJQL/D+tY2BPEcQ2vq+dZG8s5WicyQsdoqWjfMgUo=;
	h=To:Subject:From:Message-Id:Date; b=rB7AUhUjXfndmQ7VDUr28Y7shmDtfXBgWbOE/3SRSpgY6RWDCrRvp3C6ZaXOnfUK7VQ6yKYy4RwGjoSu3L97soXn2kR6VIgDaku/sIt8VMU5FS0z+SPnpuUmVPWveBP9YX9gP+IMKnT0bW2IBBfkW9UpD3naPE34FWPvNTARaeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RoeluNJK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RoeluNJK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6E2EC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 06:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782111393;
	bh=4+XJQL/D+tY2BPEcQ2vq+dZG8s5WicyQsdoqWjfMgUo=;
	h=To:Subject:From:Date:From;
	b=RoeluNJK7WglNErHbhGknJCKR60hhxNjGbXLB7V2UDQhDnvW6+7CuDQlwhH1gjrT0
	 AyGn+RV2sycJi9sxA1eJYSnfW0c6MtptG5tf9J8rRP2RTKaOO+iD4CpDl4wJY3E89o
	 TkxicWaRuvG3WMPeWiD2P+eg8lmkVIOirpeq7FIjMnEc2fkyD9yRXOLN+jOtUCaZWs
	 u6H5sFyEsFHCJDD6zXlN+rp1CqsMt/yqlmvKLw3x/fp/eBNd1v8ytHU5xUBsqMx0Wp
	 jEUYLMAq7WknYw/WKQ+RJXo/g47RlP9ByRdKbrseHIIrLweRSpz7XBzvfCXXATBa3O
	 a0GZf3nqgE2hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA7FCDB46B
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 06:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178211139369.8376.15260630918862621158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f10f30593bb15f6c3e9d576631700689ef1559334d4f62f376350d680dafeac9
Date: Mon, 22 Jun 2026 06:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782111393

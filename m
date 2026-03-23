Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 189232D7DDB
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 06:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774248294; cv=none; b=GBAQIto9/LmZtTZtrTNPy4kor1fFU0gav9b+TfymTaR0+rIZkCIcXPSY5ZButIviL8lRxnV36PhSDfIzM68Gu1fU4kr47CC/rBqXxerNKOBLR9lkkbqI+DXQlaBHiWCu+xkdn/48BsmdSUIb81MtR65jE4U5PjqHjVQX5j/C0xw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774248294; c=relaxed/simple;
	bh=Zul984HenLq+RVR92l9Ly9gI7Ud29gjVWUlu8UfWzvY=;
	h=To:Subject:From:Message-Id:Date; b=Xo9dN1sWzE6iKRbyVMarSe7HvwStFOXrjZFmYzUyqxfBWzsXqa5gHiIC9Vx91RoNOvWBNYrMIFreeyKfvk1LZpallcGPJeQmrTaKpENLWdLoTmoU2Pm93lkUMVy6u4lA8pvP9/S3g7CdIVI6AaN2nxpAcwZZ7JsFEstaxqCgqDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W/u4Uu2T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W/u4Uu2T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9592C2BC9E
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 06:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774248293;
	bh=Zul984HenLq+RVR92l9Ly9gI7Ud29gjVWUlu8UfWzvY=;
	h=To:Subject:From:Date:From;
	b=W/u4Uu2TmBpR0/yyld5UuOeq1fjzMidzzzyQMUp5nzw55tZ+wdpsMp2+1xE1VxXxm
	 wG4R6MPc10/fsaO0Rk5r8rOM6+ahRFaUBcxtgc2ECgFbPtMRAfU+8OKSOiPGwHgXLZ
	 Dm6BVPL1MoiMHPEf+I7KGrdgzq2tCIcE0stK9plTA3p5AWDyTt2+u7Yf86vTWtGL4K
	 lmP8dAg4VIxFH3s7Jm3aixrj+MF8UdRj5lTHFRX8RVcjworYK9fu3ggdkxhYqdrwlI
	 6a3MvuoZnfJ0MWGXNSnP+z9V0STv07ZzYsgjh3rrFqZtKL01yfGWVfMgKQyBMTabP3
	 6f5WNTlP+nRBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DE5D58CB1
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 06:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177424829358.26586.15530787406300749333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 830db20f4befe7020205b57d4410a1ccf870aa101b548a22081b3438f0442e20
Date: Mon, 23 Mar 2026 06:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774248293

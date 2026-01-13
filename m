Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E50F0277C88
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 10:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768300434; cv=none; b=CKDrdUaNQHHftWXyy6SfbL/lVlSrhMQ0GXFOaOy1MUo0JWHwTvNFsi/ejivYO18LFSt934MoHUf2AMBroKRTFW4g3RnQMmjOvJyZe65dPPEP6rkm+Ovn0/vA1HF/yMkxKNwbvni0HF2t81RUQ6i0t4dD6UjsfKYN0pEX9nBQkAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768300434; c=relaxed/simple;
	bh=QrHFpVr6120Z6h/V3I1D49zwaeClqoo8qaMieY4RNA8=;
	h=To:Subject:From:Message-Id:Date; b=DxD1phbW93jZjcQKk0Ar0ZXedkZki0ICXAUKx2snYonBtRbluYWtqIAe2f9I1q3u8RJD9wM+QiZ6UIPMP78kf9JnLEpCJC6eaab7Ks9Fg187bVa7b4I5MMHWAKmImIxqErCIx3mpVs3VmCHboMA3PEUmFMhaxyTLwQgT9C9slCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UzB6xkrp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UzB6xkrp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DFB0C116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 10:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768300433;
	bh=QrHFpVr6120Z6h/V3I1D49zwaeClqoo8qaMieY4RNA8=;
	h=To:Subject:From:Date:From;
	b=UzB6xkrpggSPLTFaJyE7n56/o9GaloYgtYbpAf2F7zFEDq6blYSHl2qxpfohmpwzB
	 fchyHMxvZmKABUYSB2afo5VZ+N0pGFhLN7xV01ljtHu2H6b8FVtBnOAnMsbNt/UiR4
	 zGBE2xh/yPKRJot01xWz0CUAaVY5LgLVyEdj+nC37NwtXG/RQEf4FJj4CXoR+gfwgk
	 2yGA8p838A6Kmnh7zqaDEc2gDIAAze+jO1O6LmSspS6yYHRUIWIuDKVHQK5k+XG1KH
	 XpZVUvt3euBV916A663sR4z9m6MbYJh1TEyq/Ka1awlLGZBz7ErbS3xU59RFykXqf6
	 9qqUyYHsSxk4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7CAD0C842
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 10:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176830043358.23061.16079808475137758218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0e81f3e171ae851a41cec527df12b888e3023d3e230f312c4590bee451d21fe
Date: Tue, 13 Jan 2026 10:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768300433

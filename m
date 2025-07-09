Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 426111F4E4F
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752092995; cv=none; b=JAUdLKA/VeaV3KN0QIWatDc02QPgafMO3laBWQEiCAslp/pq2omdhDGQSuIxVpQvswVok5tLi/IT1v2Jzz9nIoiC2VOnc61a9bRQ8UWSayW/NfH2Z0TQAndBLGI1KNh/mOCyr6SS/X37opsX/75YGCXrLsiCrXOARQQ96jxHNug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752092995; c=relaxed/simple;
	bh=5PL6Ruz2fFQGPdBwJh2+81sg61RGDxZSfK/vDW9u7KQ=;
	h=To:Subject:From:Message-Id:Date; b=RFxoGv++QGwWY4fK4eSWTFsWL3918MvW6GGDVoTWHkKJ0xd66Tyw0+OUr3tvYv8g/HuLCv0nCo5a8Dy+gKtBrfFR1RqIBdAKn/f7P3STM3dgBsr1OpRB3TZ7MkeIxN4YNmEE61kI1jA/oTnJa0yUZ2x0KX9kiawlshuiCr1/5bs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J6PzbZ2U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J6PzbZ2U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CB5C4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752092993;
	bh=5PL6Ruz2fFQGPdBwJh2+81sg61RGDxZSfK/vDW9u7KQ=;
	h=To:Subject:From:Date:From;
	b=J6PzbZ2Uwwb6i0/lwFGTrVOaoegxMssZu+L5CCtxVUR9SSoQPbx4kAZVi+gQf2p3O
	 E1a8Ytez2a8xqBLdo4xkZcnpQzF8EI4Os8LGZT04sapJ2yWU3MtVh9r+nV9ZJN4Yux
	 xfOrJthGzqllPVq5fjfEu5ileErMFklByQfe85nnpBWXSn2KMJOOi615QDbWQiVOUH
	 uxG2K2o+fQF3Hy3iZrdv0BjmeuXLDVHpq8tU6DcypX4jpiD8BJsvLF6UwCMJZZ8qnw
	 nQZsKdiuxGMGVoY3lL189+NC2WfDidg3ps1ajMBi7ny8I3pVovQ0N45LwFwlNFzwwb
	 kU+y2b5JYpjgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C51C83F14
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175209299358.5598.139750423352664741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb862926d0983c13cc6910fe336598c8bd8edacc8a311cd4352ab97dc0bc94e4
Date: Wed, 09 Jul 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752092993

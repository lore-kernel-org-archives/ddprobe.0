Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FA7AFBE0
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 16:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pPb5r0rw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C77E2C433C7
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 16:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696781828;
	bh=kMUajn5dNNI1qsDldHlPuPfNx/pw2kypx7yztVkXuv8=;
	h=To:Subject:From:Date:From;
	b=pPb5r0rw44/IqtK0Ugjw9i459OKYMuqjlmskKPEWQJI/Dinvnq0PYvuNayxpQV8qX
	 oCOPp6QEeOYke/5jGBaKnmzCvx3TfKftvmTd5sWIl+dPpsJhEVhUB2FpY4hqnfBQJA
	 4kUtYKRr7PYJsHxPMNpDQTvRyMfjg9Cb+xNHkhTKmEDd1CcolT+ySimU6pOOBLBerj
	 kle1EbZWqfM+I7X1p5sD5PsMaSTgpifTHD8/XvgCcr63U0Ar7wFAeXljOz6LRPVBuc
	 ZzYWhp+xmHyr2GxPjC2zpjeoBZ+jZ7kcAh0vIiPA3X7WJ97dBkIASPFPQcqwfP+uR6
	 rMqJOBOgAgr+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A71D9E95A82
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 16:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169678182867.27677.5554977445008734643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec138abd278cc260373e08404a34ef6d9bd5d9efa803ef80f51a71ef88cf81ae
Date: Sun, 08 Oct 2023 16:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696781828

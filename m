Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 210C62C3246
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748976594; cv=none; b=l6Kx+605cBeTioO30L5qRjRSPDFuTk4O/hsxLwS7yo0oH4H7zRhZf+Ow2CK5/vr+J7Pyh3EDNTIizD/ldRZqr4WYUmhirUdP0yBmGsyf6p9Eu520BHQl3ohVhYrhRw9+CxkL7aw7YZ0txvs4HIFAmfOglgeBa+p6F6Ml/EROC70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748976594; c=relaxed/simple;
	bh=RkAbHbHYhRX9dcBlNGTULiTpkjyDGUZOGnz8608gNac=;
	h=To:Subject:From:Message-Id:Date; b=bhiJzyp1Q/0Gvzi4KJ6HLpb6oYoOdXMrvlEsKoi1TQ6ZqXkabwREMjGo7XGHRmBDbJLGPqIvbmxMKcJevKOOGXeAIDtK6SItldqwfBDwNXsoYee/E/So9kKy8f15F82jKDqOIfJCNRlSUz6DIzkoqL39u6x5t0Jqlf+6UDLC3iU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xt/NnnSe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xt/NnnSe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F4A0C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748976593;
	bh=RkAbHbHYhRX9dcBlNGTULiTpkjyDGUZOGnz8608gNac=;
	h=To:Subject:From:Date:From;
	b=Xt/NnnSerPXkeZ8DcGQm9DDt+2X3II1Q4gLhkMFaHEXgjlCq/x3LB4MVu64z0lVq6
	 mEwCTAr01Q+ZwiaveOlfqbdpzV8D4yBqvboL2kJw7d9DhuXJhSqK5K4rS3NYSIS24N
	 Ufes3jAnzCjF8VkZQU8Pv1pvj7f7iitty1/Y7wICbEtxQ2T04TcbwxgJUJGrr/vLp7
	 yIV9D8ab5NZAF1M5HhUzgFHlZ/0f+2LAcVpa0bsG5rbfNYf2Ph2gsk3VM/+CWc+1Hp
	 Rscsq1HINYSehiWKa/AVUrxTm7uo/DNsvzsd2+PMt/lISYzzuYyuXIAgwYKo0Kayy+
	 KIAQeBSJu44Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB60C5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174897659358.19624.5373559159342288509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48c8f8fba1e842d4840dc5b01124abe4f374f72b88d21ed780915300f1bb44e0
Date: Tue, 03 Jun 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748976593

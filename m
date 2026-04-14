Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 302F3372683
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 20:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776200254; cv=none; b=QgWsO/Fplh1yOzJ8+nx/QJddxmcgdxKPMsWzwL/P56cRHR3ACV+J326LJtHxDdPhyVr6j3LSWq+BTq6gpq11HQ95WQGqCzZEWFSm9JRU00yexkuN9oR7Ywfs2ojc2Wnm1KGDd/ztikTlMsz6VyYqn+ooWFtLANt9IRrVqRA3yH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776200254; c=relaxed/simple;
	bh=w4eophNLnM0LRvkLV8RP4gM2K/c4lRFjmMy/ds/ZylA=;
	h=To:Subject:From:Message-Id:Date; b=Fi/474Jpg3LK2/vaU/MlyNYy/5Sd6yWzj/LgO2MgYmHxXutjejiHAKuNSSlzOIgvbi348p2fHBYOEJ79EBsqrwFNaNj0/fjqWsKC2BSoGhdWc5vfEzwnzzH9TE10dE4PEowN9RwoZze4CeHJfKiRRikNvzwQJHSJv10+66ZgQ5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NXvfokTC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NXvfokTC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B937BC2BCB4
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 20:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776200253;
	bh=w4eophNLnM0LRvkLV8RP4gM2K/c4lRFjmMy/ds/ZylA=;
	h=To:Subject:From:Date:From;
	b=NXvfokTCQ9f9sPUrOY+uuYh7wOm0ao6w33tdWDb0S8VkuQZaCwielkWsfODqmw3j6
	 up6RfYu7qChtdlQSm2EIt1k9gbw6EWfqmaA1JzBQ3EIKGayt7eqprn+w1M2Gna6rsG
	 lMCx7FD/FQ2qbtvWzesyf+TNSmQrz16pE+gqI9HH2VzCN9025RCBTb2uumlET+lXYO
	 bDyFyMGX4YWIxJLYL+n73akp8vd8R9ygHZUkoTTplpPHyHIm60yzFzt9yyfnM7yN5I
	 XgxSzB6vNvUlNpMHTd8y+s1X6F25ok+0xD+Jojh/A3wW1IbRP/Cwfho+RhWy+voOF1
	 GErTVnewT0MBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA067F9D0F1
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 20:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177620025368.1964.1987074901650770951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a1141cacb21f56cc5212850c497d14b86ddfa65eb87e8add59a65fe9b43d94d
Date: Tue, 14 Apr 2026 20:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776200253

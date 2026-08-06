Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51BE82F5A36
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785980434; cv=none; b=d/MzaVQIFh5aTXp2dxjU4l9fMngq/a11kSKj+yRuNQYB0YKENWx0t/z6VJb2iN0Vf18p1NTlJ7E5seC4EI6n0vXRP1Y74njMbU9tbJ0W4l1U2ov1mdNQW0mHk/b+I3duMCS8U9HGjZpcJ7+iHOwTjwOwgcOWd/E+tgvMvNAVT/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785980434; c=relaxed/simple;
	bh=iA8bDfj2d2iOHE6mf2zQP8owxzx918v4hG7eVbr0Wc4=;
	h=To:Subject:From:Message-Id:Date; b=cnhI6PosCn7zkVbVnzq/oXVmuEU6AvFhfLyu455i7nZCB/fSpKEzQj7x+9gW6kVgwk/4445dkv+xYRa7e8kCcyGXMuzIKqG9WLjPHF2mVHP/DLcw/wjMOV9hLSpc405mvKxc7U73m4Ren2pWRtSEMBbSCb4QECy7OOelw83syS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B3EBYbzz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B3EBYbzz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3A47C19425
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785980433;
	bh=iA8bDfj2d2iOHE6mf2zQP8owxzx918v4hG7eVbr0Wc4=;
	h=To:Subject:From:Date:From;
	b=B3EBYbzzslEfFYFXaVdXcOaYX9B0qaCtoaImrFo42c0Rm2dkb/wYYrPRuNiaK2BJs
	 v88EXcKI6uPRs7p45LvN/QbGloWvTvtH41i8YujqpvbD1iqeqECjPGgDOjg4svs5Zb
	 rdxfHUc5Aa9Bca6bgvYhDML5dLGoys5HJ5fhv+UsemyyVRyY4Yf1Q/QSsOcmM4mP4o
	 iL9rBilOLq2udCYlesGheq/3aIt/MpBp0pV+ToA62BABRln2/IYjcRQCuRplNbcJrg
	 hczfAIsRS8DEPwTYTjPEXUqBsjdis1e8zYWQiK/QIIAlbFSk8GQ21CM6L953oHdDxG
	 faSOjwe9OVMEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0BC2C55174
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178598043368.22193.16688872749459156347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e374a1ae28ac64acbc9e5be7560b68eeca55ccc709d2da0163c094d355e1046d
Date: Thu, 06 Aug 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785980433

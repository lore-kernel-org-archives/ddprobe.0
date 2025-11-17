Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05A532356C9
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 08:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763368314; cv=none; b=IvWlT6B+h5hej4NhHTV8qXJ6c+t0ELx0DoQiQR7Tm8Ju+dJEXN+TtKhyucB1OH4YvW80AVWvkxprg5KDcXg5SdQ03WuRjO8XOZRhRb1KK1cDFrT1XdTseUjP6uQZ8ZgGrqunYi8+TA6+6nHiyE+gNKKky+WiH+ix5qysc4Pmh0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763368314; c=relaxed/simple;
	bh=yeOkCQqklUHCpKcBioHOTre7rBJMmTs0iJ3cu7HcfXA=;
	h=To:Subject:From:Message-Id:Date; b=kSGWQeRqV/i9AesEUw3oeAfpofgBVns91Punqv9TrFKikfQP69ujaWR7zJzsBFpbfbp8EHe6ZUqTWU34FZ+Lugo4k8en6iFu9wX9Fv/VUreD9jhGncf+DpTC7dnoe/l9oUTeUmhyZb7n1Bfi+nXWtESXuu0e/XDQloefvZLkOlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FVh3zOBQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FVh3zOBQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD61C4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 08:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763368313;
	bh=yeOkCQqklUHCpKcBioHOTre7rBJMmTs0iJ3cu7HcfXA=;
	h=To:Subject:From:Date:From;
	b=FVh3zOBQ+R4gMdYGUlbUKMWiLkaOOmYGOSgi5bNqDrh6DMQBQxFRMUTe+t37tqiio
	 1SdsIxOZgx2ODqxNFI0Lon7VT2DhurWCGUIbaVNdTv+jV/tXaQTIfBDEeZvjBh5TK1
	 Yym5E6BupjUOvai5aepPoyGDmSyu95Fa3sKOOoz7ypZsTCH50thagZvlMOL1X7iev1
	 E7D2/8gFENg86uDU2KenpaBcJZocvxwD9LAVNmuE3BgVQOZApRzpsZ3wgCJjFPCp88
	 5jywqG0A6M4Ii/oZAggMoeOJdBbxlnHuzeH0KRMTyl83qykYfoiLbrIP9/g1Kga+/A
	 +TPlaoGVB44pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913A8CEACEF
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 08:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176336831358.18728.10767380564780569976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c138ed233adca4ad8119c82969820b6288286d3f496eee230fc982ef3de35c71
Date: Mon, 17 Nov 2025 08:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763368313

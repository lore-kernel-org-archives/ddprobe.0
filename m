Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1870429ACF6
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757764794; cv=none; b=sBUz+C5Kg2QOgaulrMwDwX80q+9Ht3jyfPYDKQOyNF9pfVdoclEI3laAj0c620neyiZjZ2223J/zmnNy2hp0mkLYk8v/0YL2JUXF+av65mDiNPtChvkV6VRYGYIkg4GXL/QBjkDo1BSdgXZeOwJkEbQLqHJLHZAPGiJGr7wnrts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757764794; c=relaxed/simple;
	bh=hHB29CHwamcrs54wJPlDQP7IQO+ngYwCcKdx4/uA2q8=;
	h=To:Subject:From:Message-Id:Date; b=eG31LkiD7X+8CT3qpnIrRylNI+uR1fA8JXaEszG6ClSOiAudNJAGWkt87JRJ52QBIdJDiL2Fo5EZ/AYVJ99/5E8TDj1QBZ/0Bnz8obhWN8NyZ+6pwky0xrm0O1CANXV1YJOf2wXCHSKE/Hie4Ed5P3hDPDulPv05vV+0ThA2qBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cVVYqqKM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cVVYqqKM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7860C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757764793;
	bh=hHB29CHwamcrs54wJPlDQP7IQO+ngYwCcKdx4/uA2q8=;
	h=To:Subject:From:Date:From;
	b=cVVYqqKMtb5w4aFLmP35UHELq2gYtaTpRrxDQGp7wxGZLkB5fRojJJ9Xu0YWT0DDq
	 VQQ+cg5LR87miNrqJoHjpiAcyGS877FkRx7ECUDwgwpBAb5RTRR1zPO1UZUAr/ujJl
	 D3kXSq+UsOo/MdIkpG3rmO46bnaW9IcKUJEh+U3PVfEY+HK4QyTHH3+ouMxLsE3T2W
	 1K13yl6dhZiSL3S3bpb9r3f6KRqAVMgZPCoTClgsIYvCi4jo9PBorFZlHf5IJPCkGN
	 1RFvJ02YLX19mvoa3KIuT8GHyQ4MLPHTYLNQLqqzQc22cIU+wsn2GMqnXlDlw0HzZP
	 2P2yADoZBE9/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951F1CAC587
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175776479357.16884.3858834866628497584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3465c0c6034bc576a4c89182fe74fff207161c115d518b05771aec4b644cfe3
Date: Sat, 13 Sep 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757764793

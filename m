Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F72E26AC3
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748881196; cv=none; b=aOzQCedv3OcH2ZFqW1astJRvRUbydlY1L7Th2Cpn6Qd66Qd5HJlcqUuLeZ2Z3za5dRdgm2DdIgLCsiWvg5HC0jKLD2FTSUj7fgnMEm5lQf4+U4kofQrYSAXhR7skMKI0duMsD6kgHWvk8x3kmZx76o+/E9//cd6Ky1l2h2PgpB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748881196; c=relaxed/simple;
	bh=Gu3HB/B83hsQ1wxkugTJGVBgHx2Zben19aEyk87Vd/4=;
	h=To:Subject:From:Message-Id:Date; b=AwHkPXWctVvorwz7ycKikixx/aHQqSPgWSQLpDAsR1HIuT8flf4vGAcOA41N8jxVlhx4TWx0L723rhD4QWrEV89i7DhKT80pTzQ9rqEvfdOwvv947mVBqZ1Ndy0RlxsRGV/tIdRbgoNoOv+vW5RvppkAwKGNSr+/BetksddXb9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UQCu0MFi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UQCu0MFi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9395C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748881193;
	bh=Gu3HB/B83hsQ1wxkugTJGVBgHx2Zben19aEyk87Vd/4=;
	h=To:Subject:From:Date:From;
	b=UQCu0MFiNpkxml5/TN/+sIV0o8MF2UUNwoNVHvvXWBioKJyGKs++F6adOKotak1VB
	 Rr4CXT2MNyxpM3KwxqoKaN65sXzFyMylZvD07fH1FsVlpvZUh/ykUPQEuXCboPG5iZ
	 xyqOmflNx9OuCwBQUhdLvq3b36q8zpF2LLfM4pm+Siyb1dxJ3whKFjcMNoQb9DdLGj
	 QvhN0MUz4l9hCEHsw293QYAGGpLDipez6ug+VQb8RHM1IGsCjo2ledGg/onq2WT6oL
	 oIYUWMgJpIwyHzTXrmDrqEOOT23s0bYsiqD8NH2oQoJPEr4Qdub8iQkjvYpmeT+Mr4
	 /oWC5mfh76rIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A41C54FB3
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174888119358.27848.11951958860698251236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b3e0d7af968170939e48b3cbcf8afbd75073828cf268b46e60a92dcdbc151a9
Date: Mon, 02 Jun 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748881193

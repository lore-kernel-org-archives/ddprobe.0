Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A27E22541B
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754497194; cv=none; b=t5eOzLZPgVyUKeb+XnSLPxSIwsnBXCtMI2/K6y+Prn3BI3EpMPGkSyrhtpoN8bcPzEXuSMahAulXJLxX1HOnPbhjWEm6t2pTRtlIwr4Kvc9h3QVOfKI5DGWA9MC7i7iEffoGEH1IOnUQvqQQ30Qw7IX33cZ+YbydGR9bBb2Fgx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754497194; c=relaxed/simple;
	bh=RV3uNRTvpTIb9Cb2mvPY5iiscAM4ApV2FHoX21l5yCU=;
	h=To:Subject:From:Message-Id:Date; b=oK3MxKWgqCkTG4uSJ51QUqs7kKWDXYOpCA3whjRPuOB04aLi0QA6Dk8/Xv3dNK/nI5P/57JcH1k0TEMZ6FKx/PC6MNo/sAKIPOxWFqhDlLOHRfNcPcMstuRaFAAWgSO6LLXrI5AIqqw6SFKNL5kltYbYDBZNeIBMcZ/RkSEzEbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hnwhHblY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hnwhHblY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BBF1C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754497193;
	bh=RV3uNRTvpTIb9Cb2mvPY5iiscAM4ApV2FHoX21l5yCU=;
	h=To:Subject:From:Date:From;
	b=hnwhHblYCHYXRzfMEmv1Pxl09UD9RoHAzMu4TvA4iY5jPts6P0xtP+z23u1Y7mUI9
	 gzSXJGaniDTEfaG+v/icIsB8w0mz8sgnM1mo1nC+HR/kGnQX4vmlQ/RU2UFViOLBwk
	 G1T0cjANSwad5wGTaZ6iJd475sSjC9vlmiEs7I15P2IJkjIQC+a5hfACy1NdwgpaeD
	 3UyEt2Dio0jjk8exrrq/QPFSyf3b6LzLtByU7Rxr7hxydj/Zzxs8zYhAKK4wX1xZwV
	 3dqcRA8FKCX7lSIxtcJWMtZLEzsIFkoZX6oElZFZKl8mI90Bi6PUbFb9Mw4/6W+uAx
	 49IfQAa9+dsxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E647C87FCB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175449719357.4503.5922221177424552718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ea834dfc7855817349cb03f2866776defe1b9a5ffad10a4eca2596f0363f119
Date: Wed, 06 Aug 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754497193

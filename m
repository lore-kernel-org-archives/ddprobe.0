Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56F71149C65
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 09:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715247143; cv=none; b=e8v7lqBaY5xMEqk2xtJb6Jb0gdJjUeg1pH0FfLWUGxGGTdF2+UDN7tB9Bjd1jZ6diNZPDmu1dXdutU98qQPDKvIN58q6UvPD+F/E73+3HJVWUM2PqwGTOjwhGgU4if93NTMzje7NKsICA5GPIt7gTbrJHJpSs50OeRBUtLOMUEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715247143; c=relaxed/simple;
	bh=i7R9H6o7oIyvk7QQ66n+tnGHmADHYB+Dm/s4DBJqdw8=;
	h=To:Subject:From:Message-Id:Date; b=bmJOUNud9QvzeZmiT2bB/xmr/PzAPkx6cAlAnDDPv5fd51ybz+6LSkHDE2Tf/cMRt+ozeWod0SEuCfwzuMgE4PFb/H0cro3cYcHOlRW9DhhTcR3OJwP+KPQFsQiEMM2SRcu1DlxHUiF4gqLuyHwQJ8HXyw01jx2p77tgEVLyoKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oZ3afTM6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oZ3afTM6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4F47C116B1
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 09:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715247142;
	bh=i7R9H6o7oIyvk7QQ66n+tnGHmADHYB+Dm/s4DBJqdw8=;
	h=To:Subject:From:Date:From;
	b=oZ3afTM6/uB+4NMlKZ3kx6JGMhK4bc138CKjmAqnLrVHe15CHIFIt6gQVeV0ri61e
	 qlvB8jReND9xnnrA2ZSX+yCXHUWFYT2Md4QH/x7No+pbQ3TUl2g2tVWmy99gNHBpct
	 5l9ToRDK55G8WyIRXKfeBRXJFJL9bL761kMwVdKOJnySopchVRbTX1FfSFj2wzvuqN
	 sMADYPi9gW7F2OcQUKxRGKfQJp54/eHLyCmnsn4si0iyAMZbG3FDW0GSn3OTmH9K4N
	 NJxTabajxBJ887LNFx+FwADq+AfOqTcZPs/c8p7oMc/K9I6x5XWxq3HzHnA7Ka140I
	 /Q6sqqYzipGRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3CF3C10F1A
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 09:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171524714279.23142.89088359022825878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dad6767d268d5ce28285b9d3c33eb865261446377fe5cad25a18a831619fa5d1
Date: Thu, 09 May 2024 09:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715247142

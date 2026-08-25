Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42BB5175A83
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787622634; cv=none; b=cU8hS1I4aukbxv30cv1tExYXAbR94UrD1Ui+m+CnR6dkor8/zBJpLkHmSxSkGXnuhec9xH6geQ5MD0t5L2biCQ04NxedLKmckqWidee0KG5vr5Jlc/X2vP7J6ZgUNNOq8R12W8iZddUw2d0yrR4RoI4WiruR4cDSgMeg10QmhAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787622634; c=relaxed/simple;
	bh=ODqJ6EMJ+2+wX9qnm8Rxru2gxGipbswbcOY6jkHiieo=;
	h=To:Subject:From:Message-Id:Date; b=m16cxyvO3SGJvxnFH/3EjE2oQU5L6rCRDvcj/UU7kzBJLfmw1PGXD8aw0NJ5NfGq/yqzRQO/YLtXArx9FH2TsjLRPINgJ387NOt86xGh9GGHk+8elgc5MpVa6tTlps6D8mCBYgMmkFnnCJkEP5+6GNDTJ0oAjEEubPOhuZra0QY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ehj9TFsH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ehj9TFsH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD653C19425
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787622633;
	bh=ODqJ6EMJ+2+wX9qnm8Rxru2gxGipbswbcOY6jkHiieo=;
	h=To:Subject:From:Date:From;
	b=Ehj9TFsH18u49IeNfXXsnPOGdsTcB5JaLRNq2Orby5LFAPxmZ8VE+R4HrvYLz0maE
	 lEeiqSMMK7eOfqnbWX8MKfVaM++ID4XfkIXhrkAgwCzuc3YmV6LsDUzxn1/mnar7D0
	 WYZE13oni8Q4qFUMN2vNr5oSBPgRVkw6H/8/xy2Q600kDYsT8f47O8mcZxLsUWozww
	 uxbdQ0nG5M+W8C2BpuTe8ORCdr0XQx7GxHZ43OyMjkMC8J05MejT7h0gssNymjJ8mM
	 vwUTMBw3IjNSmyF4lsP7p8nw44nk2A0Lc27ek/Ua9DrfS+MS09hMp7abdOTIUcFxTV
	 qBCpibPWNO0lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5BCC5DF81
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178762263368.26673.2277726960213516721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 255f887699f4e58736dc42cb760902431bc5ac2f3d8fdef8336e46eb348aa569
Date: Tue, 25 Aug 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787622633

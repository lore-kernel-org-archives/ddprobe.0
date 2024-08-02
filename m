Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F9C81E289C
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722600954; cv=none; b=pRKZmX1HPpHEy8uNzXGXYn+HLznxEZ2DZ6KpvpLvDZPMjjZn8LWYf7cdLS53W5lZ7C30BXj4tJvVV8Pz1tSUJraUbparBHQNebME15kxjzjBp2BplgnPO/zLQGflF8VLJGUCjMvVbm2lOpMuTlAOg+EHY7cerYSmUHVJYGo+PIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722600954; c=relaxed/simple;
	bh=Qt/u0YaNdec3bwEepOdmK05LSEjLp+Sy5by6f1nHFNo=;
	h=To:Subject:From:Message-Id:Date; b=hpRnvRrwwghSjiWaxUS0F2InUKJO/BKAszftBtSPPi2fOq3rBeETzh0yi1ARZjd0Xp//xMlc4rInUfRF0HU2sIL7LUSDFrRU2w+i0ipTVk+SdSPAxbws/CDZTIoFUPW3XvwbPRlag+xkc3BoBb9aryKPraaNiwvwKhx4IumLuRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FtCIWKeP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FtCIWKeP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A182DC4AF0B
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722600953;
	bh=Qt/u0YaNdec3bwEepOdmK05LSEjLp+Sy5by6f1nHFNo=;
	h=To:Subject:From:Date:From;
	b=FtCIWKePUsvlH/jPzuGZlDwzxoGrxxr/q0BcaXC7M89jLFQ48DQyQSfOznNdJwwko
	 6uPnTj4ghhf3sE5g1I2dlbxRGZ6EQx/Gz9nUdxA2PtYbRjxHhmGNFZFvD+nJBowKvx
	 ivW8vMfhqoRa144OVQh4sNQI0e85E5JzJuMFuNfZ1TgN4DMJyarvIMgQlTODuDaYNM
	 a0SvnX6RhQ1EWkciMhU1WQcb/OWfVL0GLh/IlKNlKh0P+DrAtGYszZ72wJ0+L0XzUQ
	 +aHLu8JA0Jpw7i8TFO7GftpYUTORMY0hx2AgRqforHTxguevDBS94HgqvMUh7MAbku
	 M41BL6XEJmF5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9259FC3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172260095359.4769.11934143657620875601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc5262ab77f03af728a076435279286c2b51badce409b5269ade10e221ed939f
Date: Fri, 02 Aug 2024 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722600953

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE7F1DFDE
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722786954; cv=none; b=O5Z2eSXYxhpObPdCo1j+3aBf587O2k72ooKrGm1ivpMRGvul4plSzbVCjTHos2bKoYBEuNbktyPrAHEdNU6acSXB8WHxCjHBZrJqRgVbSixZWcaTApHrwwX+u7THy+PQZdJxi0Jr276ixDhVIiKvOo6MYvbSnW5isFPvxhPsa14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722786954; c=relaxed/simple;
	bh=r4ru7X8B0/imaO+oTryX1d4lsEls5uCORG5ZpktVyBI=;
	h=To:Subject:From:Message-Id:Date; b=XBkjK5n4ZIkOaf6yjEDJ92Gc+b1wg0fXBCKuRpslZieaKpBnTrsw6R+BLsz2BtQ6CL3ERWj9MKjKyIVFlJSYu+aa9OFTvtkeb0lxADpcwuzHFPU0gm0hV7TJGBrzCSfHpXYVYS9kSDj1SHAevImrfMpywP6SdlslHDl24Y9QElU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WytoG6F2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WytoG6F2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB4CC4AF0D
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722786953;
	bh=r4ru7X8B0/imaO+oTryX1d4lsEls5uCORG5ZpktVyBI=;
	h=To:Subject:From:Date:From;
	b=WytoG6F27qxymuqcHbCoRzTkCteFZlHKQECfYjZcWwVdOvB+awquz5SHExa2Xwm7f
	 b3yFSBV2DKwye/ws/j8MmJOgON1EPf8k82P17cOxZ/lHcmSmArkhRMiP1/rLlXwtBE
	 V/ytQNbNebr9f2OKZBWbv3irNbWVS23uz+BMxw6cA/3KsgrFxS5v6olJPfaypMcXfA
	 mNb6FJAt8Q8uEA0qev8wLAwV7qO9YRnTn13YqCIw2Xh9xyGT6KHB2fRcNKY5xPKS8g
	 Z6GTki93sLaf8cWOgnUu0SOGk+p8h3kM1+JtfVw9CVtVdboEEAuv0KITkGG2YBl0c1
	 QGqxAf3/J0UqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A514C3DA7F
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172278695358.9343.9482493891089721639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94ad9a2dea8e81e871700263d1e34aa5cebb39617bf02ec5ec8e1a2a0f1bc677
Date: Sun, 04 Aug 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722786953

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05BB61E1E16
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 08:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781510794; cv=none; b=hvH8Sd7RzeNpSCVAm/Rqp0PfrR1M8trPO4gs0bwlM2XNd8Dh9V76ZF/kAdFSOYpNLs7S/wwR5u4escj3uKjHnUr9Qu1+fbtlwJfcKyRAbT9CBCAEImk3mPndJ3pDtJ6Adb66g+hJ+cbHAIkrU86fDh5oZOeGHay0Nd2j1Vj6pc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781510794; c=relaxed/simple;
	bh=dDfZRTv5bjDJo6brjUe+CKZpKNbOKMkH/Z91MF7Oiis=;
	h=To:Subject:From:Message-Id:Date; b=R0/PV0NxXN6Bz07d78uTwheDMDaPIodiN/ZT9bXjvj2brURr4D52ffFduJTSm4L2j0ul9Trgd9g4eAt4eJyf7xHbjfctjtnWNMVoBo7tiEEaq5dbNK1/qzysQpj91Jn6/eii91TXPYefIYupDnI5HDlH7RB6TBTFqDEc92XXw+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qp+YCbdW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qp+YCbdW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C27E0C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 08:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781510793;
	bh=dDfZRTv5bjDJo6brjUe+CKZpKNbOKMkH/Z91MF7Oiis=;
	h=To:Subject:From:Date:From;
	b=Qp+YCbdWBFrTk9/iIGem9qZb15kH6MFynlIt2sUw2QlGlT3ONvCWAt5rFYN0KXnjo
	 NR/Ii4FevcQHAI7Z8+dg+1sZ5rnTa6Z95StLDGeSthD4MZF7WLDbLRmlo8FwtbLioR
	 GKCKwdlKcbPM9zgHQmxYdWryN9VIsKXzkT7Hn/Kkp9s82YmjuG3RFkGrcCkKLfm2y0
	 DMaKfLVv3KMYGz1qBOQfDppLjdqAXIXal6GA0qnjc7BgZJUcWMvXOfJznzb+y/2rmX
	 HCO50iTcIUQBmSQu+dFvXGdwWUVyOUTAsrC+x69JEIrkA8qQoFsMCGw+UZmp/UFhJ0
	 KGOvrJqQJ4A/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0CACD98C5
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 08:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178151079368.24276.1652600991804506930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5547c12998e79ee9d4b6adc633878ea84aeb2acafe714fb06d38e17c3920bcc
Date: Mon, 15 Jun 2026 08:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781510793

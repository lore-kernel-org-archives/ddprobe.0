Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DED53B791
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738668955; cv=none; b=Ylq40Edc+8AcpsO1wMzsq5ilsQ/Vzw/4tjvYghjI3EGNglnsVDA+majVvhWuSu8P53Yw70Mt5YFR5FUVho2iUDLsADe8E+pXcO5xEkhLJ14UcdqkWWOdu5MFMv1w5d+KauaDlRIcQBihu3thXSttbLkyk78ARce8CtU8VNIaZiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738668955; c=relaxed/simple;
	bh=31vo7x7zLPOj0MqPlOLNFrbtRUsl8By2JynTR77GoM4=;
	h=To:Subject:From:Message-Id:Date; b=nsTrLVmstVKpKrgQoxxiDqbTIDSH5es0hwntxbgQM1o6bsrLdPbPM5ZvGZSDLo8xbrFW4m1woCtL/Xwei8plrcFCRU0a8MUyL6w8mg+2OuGwd/aNW9PaYbUwXBPENPnNV5DvLtAxl5uSuXqjYmi5t5/nqZR/3IubnYvSbC68Jhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SqFfP4S4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SqFfP4S4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B474BC4CEDF
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738668953;
	bh=31vo7x7zLPOj0MqPlOLNFrbtRUsl8By2JynTR77GoM4=;
	h=To:Subject:From:Date:From;
	b=SqFfP4S4B53+rN4W/iYRtaPX0U/s2FKwrkQQ7fIFUNsQGcRLH0V9LNPq2Mds6Lw1D
	 AOq3iIeVwztJzk9z2HRhkB2RNtvmXZJV3bM8pADUhBha/nS7tM75+PGiX58yRy7oEN
	 nCWXU+FdzNUp22nR3W62JD/0RJBcUTIplWXz0Q34RmNuzV83yG46OwIKW/p8XYFPxZ
	 xq544+SqOPxFi5SKU9Sgh1nSYPcciYYGmfMpKQHHdwfl0+WFar0UnBC3cDGuyTSy0v
	 YrQ9zJejqnUpRraX1E8L05b2mfbxR6Ud7gaAClJKnhQeLGFm/41Jcuns+D5oOjxXdh
	 FiqypSm3uCoYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A164EC02197
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173866895365.12455.5454232752851827822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3583f6dd46afd2a2e78fe18e5eb0e858ee5c7d2674774f4bb20d9d6431d73780
Date: Tue, 04 Feb 2025 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738668953

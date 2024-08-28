Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC53515A85A
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724829353; cv=none; b=OUQ3WvUWhkDMchkYCU1g7cVuWq53KpiBTR8WPE8OuEGQR2g6e4WsndRo7mGER34aAOC7lYWtxC+R3LFRKOS4ZyTsws0k7L6Zbj1PEgdNPTN+JibG6ppZ0U0B3HsJOPhGUsU5w81o8iMgLdqp72Fwv7wzu6JJR0YiHSNfLPtngAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724829353; c=relaxed/simple;
	bh=u3SXMyByHeQFBDM57/HZXMqOE7g7ODeVOKJ4RcM9q9k=;
	h=To:Subject:From:Message-Id:Date; b=eXtDseFp8Zms2gpJAm/35PLj02mnGXRffhH5OesHbmdv7gQ9fF6UhwDFncfhvyi8jdBZpcrwGpJDK9QfJDXuH9CMcEvRHj88U03Hq3veQ8WsIEydRQsOAItNcd+2F0bVptd+5lpp8KmzLe0q+Q7IQtfSlYWcZuYxI8jH9YPE9Ig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GLsdt1nV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GLsdt1nV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA12DC4FEBD
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724829353;
	bh=u3SXMyByHeQFBDM57/HZXMqOE7g7ODeVOKJ4RcM9q9k=;
	h=To:Subject:From:Date:From;
	b=GLsdt1nVeic0DuzTcIqRlt67KPS0rT/AG9z7flvPfiz5dkRRFlm3zRCKTOhB6KKX2
	 +N0+zV+FsxBqDMxrCAXlco6LPKjUvPxY0CdDChyUZUFprRBUYC7fEuhHSZZTa1L+Bt
	 P6jd0L+WvgURzLQ4HT/AwPe3rT1VWPbMbpyI8GvZYJlgcalhJs5tYUScCzdcGOcUfJ
	 4PtQODMArL/bhkS4CveLWgUi/RdjV9zAUDdGuYmb6hL8bCR5aU8twnE9NHVM+w6JIu
	 q2FRF3Hms/IN19pFYlMfZRfnLL5iF2/9NwDbcfcrdTYMEJca+dCXxzvvNriKF1GUOM
	 4TVpPSTs4TCFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BC3C5472D
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172482935360.26928.2301476884486813939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a562db9841dc555f540d846983de749ec91fac3d354f8614ce2348946710b33
Date: Wed, 28 Aug 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724829353

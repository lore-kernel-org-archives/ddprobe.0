Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295AC18626
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759967994; cv=none; b=TkYE7NENwOntwWYc6XOmJ/a7Xo3Tb4TFKwAFi+mkOcmMHtKbIaUmxYFDYznXaWuKomw/KQxTodRTwv+Tryc+hwgPPxmfKEls5o7fGD9z86WQguHbLvHAIKR2jMbNSu7zZDxZdQ+B4IXhdN6e7JGCN3AgaBxRQxlYQDoq1PSjaTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759967994; c=relaxed/simple;
	bh=GKLmEP1llbDNuy1eXh8jbIKp7g/B6nEaUoISXkq4PFQ=;
	h=To:Subject:From:Message-Id:Date; b=ayDZz0jeQL/eK5F8IIX0h0GMZf4Bl9P/Grdij03SXLTRUCCOjAdJZkVH8unnR/Qyx56SoLyevakO7vprkgqpCPPpo5ylM5dHLY1OGw/WDKlcaGuS/MfdR0IWPm0oTMCUkvM9Ht0Z+u2RE7iZ/VE94OsJWXt/CaPxuaf6MIhFuHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XuwLb6Ao; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XuwLb6Ao"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E0E4C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759967993;
	bh=GKLmEP1llbDNuy1eXh8jbIKp7g/B6nEaUoISXkq4PFQ=;
	h=To:Subject:From:Date:From;
	b=XuwLb6AoukI+Tmi9zX+A1o3yJqyr2OL7tnNAmEQm/p0x24eVKBd1A3DlWEBonhhBB
	 /gBUyfysFoHGbyCW2dm6du0rotqaTqSdzRCpQqLJH0RyLeCqdu6xYdHyJ+Z+gqPy1H
	 FUaLzuBRRb011ywGd4vXMY9qX1sHmN4PB6Nm4zKo9w4GpqmLWa8Qya8IQagiUTsKc3
	 5FVr9rRtD9qBAKSIfxhhEpUW3xZAptYTTHfIN+0Sa6mrrMfISw8KUQZO1Tb8Hfwg7Y
	 4j6dui3ZpShtOJ1IxyBJhMazppSyugtA122TqtWSgiOVGC6/nYlvQ2Hd6kuFIdQ83t
	 N/yYWs/vcMuIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F06ACAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175996799357.17227.8071994455375280332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be5fd6cec73297e59b392bfe417edc0982acef74d0ddaac54b4c29e951c9cb27
Date: Wed, 08 Oct 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759967993

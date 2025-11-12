Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C301D2BEC57
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 15:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762962594; cv=none; b=eJ9STWNWSS6tZkh9Nb2DLDloCTTwP1Io7bYB4S+MwMuYwqlAs8gDdqNT2m4Ty8zWcKTW+cHPSeRVFJB2YJPbO5CGHE7bgqKmXNNUFHuz1mbhV4KDl+dRCOMM5BBYDaTo6h4n904cMLMvfkfcYYq/mLa+xpN3r1FCax1bvkG6h58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762962594; c=relaxed/simple;
	bh=i4JWgz/V/TpIp8v9hVHnZPz9jugjB4U3YmEppp3Urlo=;
	h=To:Subject:From:Message-Id:Date; b=WZndb6lpbMdRZBeOif+828J/ocmzsE9zXY8TuEn5lGHcd1tQQJ1OmGm38sEqxL7I4XLuMekE5lHbOnNP6rm4mwnMORYlMWU34HaOX38GKb0dRX50NlskIm/HxJl/exJwX/tI86Vnf0V9S89PupIVX+UTDEml5vLp9k8dvCHp/RU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mETpv6yV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mETpv6yV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3FC57C19425
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 15:49:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762962594;
	bh=i4JWgz/V/TpIp8v9hVHnZPz9jugjB4U3YmEppp3Urlo=;
	h=To:Subject:From:Date:From;
	b=mETpv6yVY0c93FBA0sgTwlfZDLxEPkRa2pkSIk2QnDjHAGL/00RD4Tw5KlCIq1LLc
	 Jbne2AVf/FvRcuKJUl0/M1MffYcoJSQyZR//xYFbunojVefXYsoif2NANwGiJeA5vl
	 8X4vinBaEvo8Jqy5SI7Nw4xIRV3wAYCfv8G9IllqI4S7ZEr4VBTxoxM4ZkQ1m8bQVy
	 PqCXkOeaA5v5pXQ2m56vTzvXI9QAtF23CuHXKwE5Dzk3C139f5CU9Yaimt+S8zoB2V
	 tcRqVK5ZPUI6YeS6o+cPEAS+rcqUg8049ZDfNszxcoQWVbHN4Pmwsd4VkLPxcr1VgR
	 bEJI5ClmUe0Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA95DCCFA1A
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176296259385.16140.9917072904580697943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12b54a538b9b500b7d8700c74d43a1c871c48592196087c41ee15b998c787972
Date: Wed, 12 Nov 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762962593

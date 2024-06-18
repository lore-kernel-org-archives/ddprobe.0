Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ECA07347C
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 12:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718713163; cv=none; b=i34H1KnQF/LPRc4qbqFjZI1+Bh1/ztNkbg1bt/XvKqMQD/bQlsVRHUqWbmoVAcHdvDK3YnwWTsS9G7/+sXYAIjhxBV1vIKEFYc77TI4cZGQkf/gxWXptYWKjpX6Mk3wgZxPEFAOcQlvXrAVITaaMIjJgnX+vly6jrFj9fJVrE0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718713163; c=relaxed/simple;
	bh=F8oN79MbmoPDXeAfEDX5q50Jg0G3ad0yra8PfOyRQWg=;
	h=To:Subject:From:Message-Id:Date; b=eQkB7qKNmI6M4i/nu7u60T1psH4a+9C5LP06hQROXOAZQqEFaiKEViPgNEe41D//qLDX68LIJIreEd3LLWRYfIi1q74LdKntyjuH7IQGhvxM2cDyoxiAXP1QKDw5YSCSpllvrrcmKrKSPkmtskgqv2xXlZhKVVbSPdTp0PhYltQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WUp9FTr4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WUp9FTr4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D86CCC3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 12:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718713162;
	bh=F8oN79MbmoPDXeAfEDX5q50Jg0G3ad0yra8PfOyRQWg=;
	h=To:Subject:From:Date:From;
	b=WUp9FTr4g1X3CsJANXUqUiMS0inG/6rQ3igPgcR9Vis23z6lvtnOCrYpPvRA8cv3G
	 Nrhe+Hwnb5erBq0QuJTTNujkxAVF3r1H8XL7PoPyyfsoDHdocjHAVmIVLAHaEuqPJp
	 M0nFTBe8WkhbbXRBEZYWX8AnJUsfej9hUiG1ErCUHRCYXcmVa8Yh3pEm1UALyYPu2j
	 ltuQ5AQP+DKzbuvUPtGzPNb9F0kGumIHfCt8JjACGo9O5L1fn0SisbWL5+vRQIRP6p
	 z4TMdPt8QQBaD3fp2taY5j/wh9dgWK5FRwoQrHiBYKrAOo9QDyL86aZQTr2dueyD04
	 ZD4M0fud09QmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C623CC27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 12:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171871316280.2419.17867660547068066870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5035fb09445d75e87299beed5b1804ec0da248d846e1e17a222222d076f02869
Date: Tue, 18 Jun 2024 12:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718713162

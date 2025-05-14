Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 239FE1F8676
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747226394; cv=none; b=UgKTlHQYYCBU4H5s1CvSeiGls0byxS2slMhdTR3GX6+N9nkFqjn4M/sa92DniYMR4ZzmrW2gN2uM7s9uZFYLp/iRkg29cZXjD0YGmHvra0qroS8nZSC1ePFhd6DskbfPgucjDjkWa21Gci5uvrxLvMxCF7b65T3BUiPEn7qAqSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747226394; c=relaxed/simple;
	bh=l8MH/HpIlIarHcP0UcGU0WKi5wf7ZeaD2oTGoleO23Y=;
	h=To:Subject:From:Message-Id:Date; b=Vphjd+l8cy+3FJ7yNG9gBu+RSPR5LNMk1MMSBoqolq7O20O5TTgfdWXN39LBqnZi+VPsScdDvXQcuw2BqMq1jp66gGuJosveFSp55vXIzQqxO0Pvny/E5qtPErtXxriJWQOoewjQOQViiGubRP4XOFJ71L3qly2p5Zw3b+f80cA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rdgYyCSq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rdgYyCSq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E557C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747226393;
	bh=l8MH/HpIlIarHcP0UcGU0WKi5wf7ZeaD2oTGoleO23Y=;
	h=To:Subject:From:Date:From;
	b=rdgYyCSqLwLB/F5Mr4dzukoCIT0pzPGKJvGij3EmBglFcRgBAemeuNPnZ5p2TDOsL
	 Suaklp7GABkBAKaBpArWzCweP7c/rIMOcgQNejVFnvic0TPlhdEeAs9ulCh3TOkis3
	 sVZPsieJb7r312niQCrTohRHgG9zHBGrocfDo2YYjiRV7bHcZ22TSbWS5zbPaxQ1NA
	 tvvUF6uqBVFcrv7VR8fLN/5VIG4trdQAqv84/eld6rPmnGu8AhDC56IEWnCrmx4ez9
	 C1+/qKvxwlMy+XIPiazYSOFPKw0JhL9NgI3LmLQs6lgTaZoQPmYmiM2KTFNG4x+OWd
	 gTTwWGR8NRSVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDBBC3ABCC
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174722639357.24108.12897141675312233381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d203fa04a2bd716f57495463dc5769cadaeae96110b083bd5794da20d3bdda5f
Date: Wed, 14 May 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747226393

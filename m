Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E54E20D4FB
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738671954; cv=none; b=lIIfFKazMbKnbmAq8snfirg8WAWfDVVQ9eRErf/fDV34s5NKZDM7DQljS5ADNucIFb8r31UO5XMYQSzbuYDYWxnuKUVtqGaaTdFuDko8ZsgK1x0Wg+DF1jQqeQH2L6D1Z1ZsnfMKvHFQzC40R33R9l/ZkVnTSxTkIobdnsOInkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738671954; c=relaxed/simple;
	bh=aeTjSI/scSQCIqnuhwwQJdS9MQoz6uH2FwWUBPpSzFQ=;
	h=To:Subject:From:Message-Id:Date; b=K7GTzfk5PVOlCGWV8JvB0CLP2hnDeelZk+oPx0XcGUlY2Ikq0634cvpt9NkS23xhW2gZnPUs56bhQJ+8DS0VOtNGq9Jda2W4AE6io/XEwPixreeRxvrslTvkT0n0kkZgq6djyHGSgwnClPVAMw/AYMMfE2bAinbyV3V3Hw9qgxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ojkFPDME; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ojkFPDME"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6332C4CEDF
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738671953;
	bh=aeTjSI/scSQCIqnuhwwQJdS9MQoz6uH2FwWUBPpSzFQ=;
	h=To:Subject:From:Date:From;
	b=ojkFPDMEDuB+bF1HN54TvB1QOrMsCJQFDoxnks81/5GKfI1fkD/NL1BhPAlv6dtHH
	 ISfxWOByTP+XL+7XnVI5Rxw8gOB+nBKwEVjtBGyBSUSN5OVNmrTyJ5SgnXKzF7OYdX
	 et6NO7aM4ziezh1LEdvUwB1rBF8YyK1Pt6Wrd08xZdIc+GSvRIpqX+rRVzV5lFXmuQ
	 rlqdTxW4WhotafMG4qtogMEAHF8SQtHGBIoCckxU57+UNjuV3Td9cO3rVXIQjBCViB
	 78x/tawR9Aymu8fmw6i300vJxVzEifeeJ9vQgMirFQru6rry53VlRnTcQWWaFBB1UF
	 URbJp/cGF8fIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EC2C02194
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173867195360.8663.17619796649406826794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5783eb7f5615bef8b0945242c9873b0954aa1ff94ed658ec50d88921839e7db
Date: Tue, 04 Feb 2025 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738671953

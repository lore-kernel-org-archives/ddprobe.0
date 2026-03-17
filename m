Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12D0733EB0E
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 01:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773711894; cv=none; b=SyGEtiq1OkRfzIoCiupDh/Rg6XAZzk1Ik6KQ2X9U/PlBJeWxXbAPRxfhygMqgs3YIcftp8oUt8SpkfEAns0o5dXQ6PnSH9ZlNzS/K5vxds/dSgA8LEwqyfMNmFzXMrmPaDjlt9NbQiwcx+WJTeRWWsX1CpCKPTULrcZHWauw7rQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773711894; c=relaxed/simple;
	bh=XjcO1G/qInoQbjDI0IKnqGSInCPgcXr0Of1IZjUowzs=;
	h=To:Subject:From:Message-Id:Date; b=izNAvYfKjePCMM3NMjp5ndkQwXsm1W6U7kVf76NjEvVkhBH9eIaJXkz9VfHN59rQjGySIgHcQs3Ke24hcBl7U0hIr1aRNt3v4ko6Oq7WHVFY5gXVIRawpbKbUIBGQs13gjFPQc77owblNZc9vzGigFDrGtUyjj6oOs/seQwb5b8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gnXwjr1b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gnXwjr1b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE7DC2BC9E
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 01:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773711893;
	bh=XjcO1G/qInoQbjDI0IKnqGSInCPgcXr0Of1IZjUowzs=;
	h=To:Subject:From:Date:From;
	b=gnXwjr1bY4XH1TqdzMp8TVpjkEruolW5kFLndeNBuz2FgY4Kbzoo881TeC09rvhMz
	 Wdp21UBnfJserr70BGuQ2VUb6dtzJlD6xKOeW3tz6U+VYWaeoxxEiGrXEt9E7u8kaa
	 sJSNFHvquXWsOedkbSvVBmohx3XWpPvxrMx6GT9SoBXtQYIP6eAmjZF28+67lcnHas
	 uEDVjC5XyzTc5GQbTpeGdypm/NmCCDmqEDibpNkEe2oOLWlRuos6FnnHbMRh/9BXWJ
	 eGQ4tniWPWJ7Wteb7TOfjXLwkrQSoPNV/XeVL5u7nXhYLEM8JllGyb6vZ4S2orEQg2
	 MSBL7qJchaZoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908CFFB5EA1
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 01:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177371189358.6301.8904413245365087985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8c5c96bdbf1df8744913752d5eda33151eb7ffb5a35ffef72c96024fe08e87d
Date: Tue, 17 Mar 2026 01:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773711893

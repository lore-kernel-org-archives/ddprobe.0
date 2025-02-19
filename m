Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28189214A6A
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 18:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739989734; cv=none; b=YrsPHvqKVcPiQJExmeDe9wcyeVjE16xbyBUHPi0j13MRUzE/gaXBRQaYwBmkJZDeKV6OR3lnBcuGM+FuvRrNo6LzPHxoMd0jsMSdq8GJvACNk+7r0sW/giwQnpn2HfXp1JfUPUiOJU8QWsJVBmJTxqhI47K+jE0Rhk/q5wa8f9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739989734; c=relaxed/simple;
	bh=pxk5T0tnVpsFGRnUiGiJKk4Eon++Qq/xLe3AcmtWaKY=;
	h=To:Subject:From:Message-Id:Date; b=ctLwsOjbTvqdRnTik+Kvwy1wW3Qv0u2v8BvVK6AOj0Oj+heejtfyXFQ7SSDspgUpAcup3dupV6Snt1YnMB07UjW+xtESl91QMzbAghw7Er/kInLXY1bcQpb7tOu8u7xr4525n/UDcMp2kfuYlzFDA90Q/QJCGpn+lQd9TG3G6Yg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LnVtICFA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LnVtICFA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27B1C4CED1
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 18:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739989733;
	bh=pxk5T0tnVpsFGRnUiGiJKk4Eon++Qq/xLe3AcmtWaKY=;
	h=To:Subject:From:Date:From;
	b=LnVtICFA+bbAVZz7EJnRY5i7gAKSL2mOo3W7V4Yq2G7ONGjc128jY1kjdx8zHqeVL
	 6cwftxADkRYRkkt9VJQDQLU+7WTULJ1HAWlkf3+53JDIX0aIXjru1B1UGMjwyxwMB/
	 SNhxhlffq2J+DlNcbRzY85syQCJ7XraKGR5UG1R0iN/PSFchQgaENFhnUFxQFF29+0
	 0y2TrEfkl+K2iqiCSHV7gB09HPj1/GnmR5TBPQbCtWraJhtd6e7jMWb9iRvyHInwSN
	 E/AqDfTdetNB+9vJFo2LAD/CC5Web3ttPZ6TLN6Ji5mynzM+nn8W03o7p0a7kTHH5K
	 n9naifXJBRNXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93909C021AA
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 18:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173998973359.4335.16825623229757765239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b2e8fa9354c99afe6f4d7287a1bb39d08239a14c98837ee92ed2b264888c1bc
Date: Wed, 19 Feb 2025 18:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739989733

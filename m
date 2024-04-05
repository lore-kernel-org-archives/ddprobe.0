Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03A4A15FCE4
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 09:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712308697; cv=none; b=R/HAKijYWB22W5FDLcxT9lJZvJl9QY5rpAMZL0DjN5cJxV0L/mruk4x3JMYiC4wDpMxWVS/Opg3Cux1g1teybPk9Q2XCWT4EYwj5mbs5YZe7Y1IElAgC20XVEqZVqUxae0yhkiaKPy13tJLxWhOXPbIwQ3DIHtsiOpL9YhKYBGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712308697; c=relaxed/simple;
	bh=tkAdlldd+ZWVK9IBJWpLPQ39a9aAVkllJIxaGvF1PA0=;
	h=To:Subject:From:Message-Id:Date; b=GfbLKIs93RddEdu5Wkk0rPYiXcXCTEDkt+3ya34TPkSS0FVy/yB6bEj9GAD0JoPlw+22yoms7nQ3ubV6DSw6I/bOFFUvqI1OBVWIZjeuLbObJAeHKRdkWuZcqUsExZhlgWl5LOYIbtHbav8xj5CFK3mJmqx5Mio35Nz4erixt0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QeJPNvvP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QeJPNvvP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 736C2C433C7
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 09:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712308696;
	bh=tkAdlldd+ZWVK9IBJWpLPQ39a9aAVkllJIxaGvF1PA0=;
	h=To:Subject:From:Date:From;
	b=QeJPNvvPo3NDBW2Sy8le0o7uZYDTiij4uMdvOFIfqeMfyqnBMA2ePl0bm5e+DhU/2
	 nkCPkwfVe+K+vc1uzZN2/nDh3AHBpnLJ49MfdTr8KuwyMX7LUjNqYYR8GLQ5LoHyFY
	 ehdb6u7QhDOeAjzuj19m6rPYMySaltx/0rmUpJuIlyZ31WDjBCHmlNKcMycMJVv590
	 Q3Elun2e7O7JTmzeOHLo8kLsIoZXLo8TKsTyFVc6vSfzBNqG3wxv0aTXeTPzSXEt01
	 VL3zGRxUs5yt3vWK4WQtlNvARzgDUtNULRzeWiqdSbm+1FzSkupZRGpGAtYT0jd57b
	 m91VJf7/IQk0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64228C67861
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 09:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171230869639.13820.1470627332331026290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8551c35739f4f257d02692105919b342df5340fd3d1af2a61fb87748255f7a4
Date: Fri, 05 Apr 2024 09:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712308696

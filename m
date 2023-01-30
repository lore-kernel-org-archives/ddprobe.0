Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EBAD36E
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 05:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3455EC433D2
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 05:03:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675054986;
	bh=hDeRtA9Nu2TfR5IXpF7rS70UYxDKhTMV1+K+aqNseU0=;
	h=To:Subject:From:Date:From;
	b=f+uLeRTGsa/+gugk6vl7HvMqfw+CLgP6VRnMCaimLIGjVWZJdkdWa0b3N1RUBlllZ
	 upaGlp6/+sE/9qrMsquUBzJoVt6+w1a3qdyaLZO2fDKBBwPHyg3ntyb1LINIw4cFx9
	 wNHpBanZ75MzCBAYD9sBHyU3qw/tSCbMG+hlb9CN9iw6Gnex8JzoIrnBx37znBsHC2
	 XetWrjX7P099QVa5FUSIbsTx/KNJvg3SDGXjtfSAgn9M3BMww7g8wwFk5emM6YfwI6
	 xVlO0O/8gWWa0AGl9qOtxR45AxHn8tJrKBptgRFUMnWdWed9MDgW3Xy55ieys3VuuA
	 Oie4nXq+FOwCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ED397C54EED
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 05:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167505498595.29310.5758974444903214220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: add6991a2a0131fd9035d1958403c2a1a0709daca6bd9a9d5ef237fae292e0a3
Date: Mon, 30 Jan 2023 05:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675054985

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14CB011C91
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 09:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vJYBobSL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80885C433C8
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 09:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700473696;
	bh=QcNXjdiZRMObSJJEXgeQr5+vNQHpg2TGrQI4y+flBiw=;
	h=To:Subject:From:Date:From;
	b=vJYBobSLXSNoL+c+mPM8fyXXYmx4A/ilvEOI33FftjGW4G/j2igJcfsCox7dNzd23
	 KKgiUJinFW79nrEufLqzzOjCh4e/voYAfSDFafie2xgg5q8rvqRqz4rEjHAd418hA8
	 f8pZGqAk/KQcUSqTa+RjOfoxw/QWfGuzQCwqdNo6TNWcFxSqcurX57sxssowuXMvCg
	 4s4BKHPJLc/eHMinLvs+ml7H9zvvFTQDnjBgEgTCzBl5qEplMphJlbN3rO1b9cwhZM
	 8U9hyXtNmZW8TmXoI+iIU7WPop9qNyR2MV9GK16QPLEs1Xk8111xBx/LZ2V9oM24i1
	 zSisq3t95kA6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F430C54E76
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 09:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170047369638.1003.4044875213429044068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4b47d6697c4a18b20323ce621752938b72e67545b572955a9cb8c03e1283025
Date: Mon, 20 Nov 2023 09:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700473696

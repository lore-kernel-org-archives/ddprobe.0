Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFC3820E3
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 13:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80B99C433F0
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 13:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671195687;
	bh=3fIyU1QsylehGfuLdXurNiFcCEo+ABof6HNhXTMWgYE=;
	h=To:Subject:From:Date:From;
	b=uNgRbMKPpnDoy8mFfoAQlHxYcAOQTgp61rcmcubcwqsfBRKOkYgB0TTdZXnQ0TSFD
	 OMCOljqVhP6PgAlkald7nln1abrUyPJcLEujORd13Qa2nwzGmrT4Uxt7RjnLTrUKnn
	 KB76SfeA9xhQ/DbwxtNbBiQfHXSNgysHVHKDLSFo51744ley0rhJEUwnwrD6DDcRnw
	 FHI82WRMXYiO8vZ1mpsurUCWtGhPF70ppuMJLjH7vO9xGGfAU71A61Ifgx9aUuVwZv
	 /csWHyJo2dR2cy61szcX/6phD/oV0ZeP7S2/vAZrrXYK3V9GbvtmgGSLnG7ddnoY/M
	 V4ppwJxR9hTZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68B3AC4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 13:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167119568741.21532.6987144530802657304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0bf7c1c5d80303d8b6731551ab33d9d24d7bb6843155271f78d2743be3b7056
Date: Fri, 16 Dec 2022 13:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671195687

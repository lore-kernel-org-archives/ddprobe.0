Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC5C6210C
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 12:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 693C0C433D6
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 12:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669033254;
	bh=DY+4Lzvp4jAEeACDXPgKaN1lh0LHWMAnPuBfZZ7PncM=;
	h=To:Subject:From:Date:From;
	b=qRAPzyRtxbrO7ncEMUw325pPKfu0Kw1HXAWRaxSzlho68i2N14dmL2/6FxEaHTxzD
	 sEOQ++9rpGQsgPh1qQaV8aBujv6Q2ERIfeSnoSly5CSgRRTDfTDCiptXDmaaJT9a05
	 CkFE9qfXdFpt+au7OtqWKqUtwdneXwBHByIB+0SbaAb18e/WII0rqYTb3WVDNuji1y
	 2rdyefjlVRgIU50+i9k14GYTCSbIUsDAqgm2OjQ5V318Q7wmrfdIBTcqYzecM+suUC
	 8roZaVgr1DtasQCwCuBg15phwtIQViU2vPfGtK9C6lilM05fs7875L3VsmGZoiXVWT
	 aRTXssYWgTsjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51EE2C4332F
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 12:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166903325432.15206.12065287657760142920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a2c7f30ed2d926b5e8e69fd96de10e62eb6bf2da85599ab112c2cedcdba90c1
Date: Mon, 21 Nov 2022 12:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669033254

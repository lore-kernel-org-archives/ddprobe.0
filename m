Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CDB81101
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 01:44:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E42F5C433EF
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 01:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685583845;
	bh=M8Hf/o+skJuHG01iH5XAKeZXdwbyKabhC9NxSd117ws=;
	h=To:Subject:From:Date:From;
	b=p1sPRp2DqBCRAunrZmFAUD3H/jtOdEwHT4hFDgLhn6bfuTSY54Y5pFQM+iMf1sC4N
	 pJRyL6VPhxXlxQqJ6wgYBAlBWI0Jd2qfQt5ju2SL2p8+RpO5nvyStLCDLdk+zGOv/Y
	 mLn+F/mkHcIBzjcEd01ZjQxXFLS2MQ1jwNev7JlZnEXE5hbrjj93dzfYeg71d4Egx1
	 q1l5C4wjyv1MblIQjxqXAsBQecu0zXKOku+OJQ19ZCyBC6GR+pX9nlRm0yQZYbJXSX
	 cfgm6CS3JF2RrQQasoCtz1JX4eOOVFaevCbU8dXz5ftaPZhjgtOP5zImF9sEtSC3eY
	 DkH7mGAEvUJJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5548C77B73
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 01:44:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168558384580.30911.12544497191022022646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90b39c5ca8646f69740ed93c660040f18094c393923f22bd70afb6910c387c18
Date: Thu, 01 Jun 2023 01:44:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685583845

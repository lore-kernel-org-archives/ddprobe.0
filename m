Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCA2015A9
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 02:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86BE8C433C1
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 02:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667788254;
	bh=3I48p/TlMOk9gFGTfY7xMaO2KraJ+PSl6DtNoFrCjtg=;
	h=To:Subject:From:Date:From;
	b=ZNcBDkBAzr78T6+UKAlkUhM8m5qChAjsg00YPjQ3Uy1GrioH+bIEXQRldec0BaYoV
	 9tISoXZIxEZ74OUCHXA4HtizKinF8r4HWR7Jeq7dspvMfvmxT9R/jXj7p2ukIM1Xer
	 smVW3li1Vy+86aQe8so3WPTW/wnJsobc3Ch38lQta3Gnr1TtdC+a84QJmj5iqjn7L9
	 fi4NhZUNCSje+ADN4Ih7q/ghcKjQTHeZGRv4G1eavyHwy8V5r3OI6glFWPjEs13pNl
	 Ojh74LJxlxy3gUpcWDGHKgk34ztN/GyxPV5VrKXuZbKk/WGRpR1n87D1U2BByhsXuL
	 A9fWrpJjk/59w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6389BC4332F
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 02:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166778825436.23132.12126888685681422997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1ebbc622f2f16df4e2bf8429a84f563dcbb44bdf709b83c62fa517fc2089592
Date: Mon, 07 Nov 2022 02:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667788254

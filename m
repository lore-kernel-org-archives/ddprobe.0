Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 516727F
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 03:35:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB1A1C433C7
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 03:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695612908;
	bh=WabEq6yyLcvgkXM5NNWvwt3BiYhEmJ/tplNV9eqJWoo=;
	h=To:Subject:From:Date:From;
	b=Xx1sRbnuOTm0W05mfBMYjLNcs622Oe8XkGmDTsQ98XNR3Ad4rvuUN776c9mbZSing
	 FdSnh6q4A1qng0PEUZOH5R5Tzxwg4wxKjvR6Hx6LxQhjmVfFLpuEO9cT0+4F22lMYH
	 SiLFUHKdjCHuDojzY/+bYXiCeWHhmf/FGj4jMlY+mFGnvoHvcoAvxXlpmcMq1RBwO9
	 fkMYhUOLIeyS6u+h/TY3lia+owBwZhGQ2fyqUqK7X14eP8FjZXxjIBXg5ZMU8HAlh5
	 cVRhe3T6RgqA4WvJpofVmasGMc+gom3p87GDVAFxJeDdy8hzfsbORM1tiSCB5DLfYd
	 +tYRJaKGfVKDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC59ACE7A8B
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 03:35:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169561290869.6355.4387473610446322007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 778957e519d1e2b60c589a8717e91ee458de24e348f6a1eedf0ac92b5e43a416
Date: Mon, 25 Sep 2023 03:35:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695612908

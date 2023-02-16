Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E1B515A7
	for <ddprobe@lists.linux.dev>; Thu, 16 Feb 2023 06:30:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F38C5C433EF
	for <ddprobe@lists.linux.dev>; Thu, 16 Feb 2023 06:30:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676529006;
	bh=GvGldFlwpsF5f2/mYSTYx0Tw6+A9vjnB0tttSfnqVjI=;
	h=To:Subject:From:Date:From;
	b=O0sYARvAmIwPbZBxTot+V08FjyZrSYH//3kvz+Wxu72B88DVGv7kOCbh8l2jh/8NV
	 FIKbgafLFGVoTlAb/DWM8lqYoTt6cypD4WOuhaS1Z/S1Ats9kK03EWXKhSuUfTxJkB
	 lFO6Sj+TGrAVI/ZagodPszhXB3n1ZuFm424qBS4MQO2LgapBRdc44+9nJs37ukZfWR
	 5eRBTop8aqzMQKpWOpgo+zEp0d5OewGO3hXpe8behWXjrCvUfWYQdz6F7bq7Y0WA48
	 GYINE2iyPZepwbrqk/9gea9dLshI2pYEyaMIA3uFP75x/PYJxM0E0cKNKrb9WK4sKc
	 Y1f6L0HUnkKwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5C8EC61DA4
	for <ddprobe@lists.linux.dev>; Thu, 16 Feb 2023 06:30:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167652900585.19877.2434478010847844102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fa08acbb159c518da21e026b9c9a0d9c2b5220d0259d3fac40df16966734f25
Date: Thu, 16 Feb 2023 06:30:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676529005

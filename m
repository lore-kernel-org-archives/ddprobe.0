Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B96A67F
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 10:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6692BC433C1
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 10:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663063853;
	bh=vMPCtIEPHG1f3Vtr3ceTi1Mn5L8QlYnphtb2bq8Hp0Q=;
	h=To:Subject:From:Date:From;
	b=fV35xSYsEU/mZH5HqYsyI1bnrUop11GiVOnewxDhvzZvHtAo4HkRSGk8Z4GqHs569
	 lC2KeZRp+xpe2XWGnGX+aE2N+TDM/UWcBQuGFtP3sxZu5SaVWD5/shevHKTXY7nbAY
	 UwY2PzihzuGJpOqIsqCJmapfuMtzN0GOCte9M8lyBTvvYV2UmXDe8qN6OLHV4vRo3U
	 JVt1Oyr38NQqB/fdJCW7CvVEGESZymKyGK4f1b21myTsUGcFRq9xpcyPok0Tqy5ZPo
	 atFzDWlPUT6k9i/6XN6NIGjK11rGTpC49gANEf0aQCiOxYuVx7avyf8duzoy0VGDcW
	 vt1T/+wIJBKuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E988C6FA82
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 10:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166306385331.6683.18243224506573096424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e11f11f0ad4d364db353673a0d1975e435a71ce4dbb2eb9093ae53c5bd7ba67f
Date: Tue, 13 Sep 2022 10:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663063853

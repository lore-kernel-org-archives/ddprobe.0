Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE15E7B
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 17:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72DEEC433C1
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 17:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667152254;
	bh=0RQfqb+PlxKBlUyeKFRUMjZjltnyKkQf4hXh0A59vsU=;
	h=To:Subject:From:Date:From;
	b=PtSKjjlx1EQ3Mhuzm0PDs3ztrOI3KRYdSc71E+cVfp7ws5qwEAB84YewpGkO0JD8i
	 IH3Z5tGDJ2sJGKx89Yn6FDDvqW05PftKxErYh1/KUAzB0wy1vmp8Y3yF9lEK+4UjJZ
	 XHS93LKbV488qHzWWx4lyVhJ8whmfQyffF2JcAupDMD0V4a5qS7TQuCSrWDEiHb3fb
	 1sT3zuslQPM9uD0SWhOQij2tCLtNgya7debQfefEqEEQ9umjtQs1zSmk5xVxfo3Am1
	 4N7SIa2IViUGu+Bfvi2TkIt1j/KnhTuX0uRYEuf0LO4DgC+XOFySFH/FrpQwugbjE/
	 uFfNwR9JdDD0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52E55ECAAA1
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 17:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166715225432.7285.12598545423940672358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7d0a2592310185fbaf51d09ab1650e4827f9bd96523449024e13c3b820c52ed
Date: Sun, 30 Oct 2022 17:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667152254

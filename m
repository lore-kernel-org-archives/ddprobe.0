Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8A33EDD
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 12:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B39DC433D2
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 12:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670588487;
	bh=QRH6ZyJGmMIXRzjm34IAM6BN4Hm+CepLLCTOydsmqFY=;
	h=To:Subject:From:Date:From;
	b=XBY2MgFuF7s2/pSLon9DJeslrcIp1S0NEJbKjzgc68TG1o+kzAdJYYufEge7aJ8b9
	 QWFOFATr0LC9E6qfczifvCn8cwbIYSczui/RLxe2tfGBb6fmXg4lSx5Oz3XFOPQQNp
	 J5kyGKnEJSkB7/w9yThW+4Gf3INRWYOEGOag455kjIpmBvd3J2Te1Y+iTaGHB2PWBt
	 ZTMtlItfOLhWAlgheNLvbMchqHFrkdStBS72MWpBNZrfYmtIMNfj/RoE+Nh9WDema/
	 uWpdn1Mb6GSCsErMn8pFLJNEvr524zWxKqW1Gi/TZxlVzzotdZjDKv3XGpmA3+omIy
	 +sPrS3rhj4SQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70CF5C04FDE
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 12:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167058848743.28079.1562383701210759243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f02b02d5891f04bdd0fd5c15363453cfe25c842b61ad40ea72d4c0ac3ec6a67d
Date: Fri, 09 Dec 2022 12:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670588487

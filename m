Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD9487E
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 06:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6662DC433C1
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 06:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662446453;
	bh=xC+R6M9AYOijxTqronICMY/ndpbedRNTafE09Et1SZ4=;
	h=To:Subject:From:Date:From;
	b=br8zf9ok1FtDxd0l5rUworDGYcBiPjgI2GQq6yKPq5Y/pqR0DWY+2D/iUIwxQdMp3
	 O7U7P1AOzOSNiCx6xUR1u0xkwkMsIba1LYALmWm92HoCxVR4i7JU1oX6zsWc0h3wiC
	 sUAXymOVVcFqWGPQc2o1hzrUiZnk0cu/Lxhn6wmB880MQESIoI+1Bhn+MyIPCjXydj
	 w5zKFqmw/ncRIgY47KmigMofl1oXXptKIQg4EFYn+rlSXobNBmDuecKy5nzTYixi54
	 M9CA7Sf/PO24LQacbG33utOOCvN6jST0MuOHDPb22lUZLBxT8muMjg7o5kExAIeaRy
	 rgfZicd5MfvxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50E51ECAAA1
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 06:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166244645332.13306.16069050720271702369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77e679269c2758c4ab635815894a8cfc6277b5232dee9627e16d6eafd41bcaaa
Date: Tue, 06 Sep 2022 06:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662446453

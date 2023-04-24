Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54A1129A1
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 15:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F050BC433D2
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 15:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682349126;
	bh=t+lo+guLUwGojywfj177AavH/sABgwrfCOPSP5dltcI=;
	h=To:Subject:From:Date:From;
	b=E37cmRC/pfecwF5sj8ngcTzVPGFTOeo4HjXixo+EpsiaGLqzAyllFxiUzXeu1knlG
	 7/lYWbI+zKnzeomCrAx4SZgBFfTjCt5VBcZk+KTz16W9SLASv1PnY9zfEuKIwzSV99
	 bMeBltOZuEez6qkoOzdVYsv+xPPY1AfX1Qw4o8BXCy21r4jWWcm+NC+wjUDCEpLgmL
	 Um4MKfRxuuAwQ++iPkpTbHIEY+WtnOA8GuEy1y8VEiMyivwqNz8VL4OjxYFUv1pgU/
	 7b+iZacZqr8f/7xEEr/FPB5d98qtoKSCYOvoCQLsP+54vcDdmR9qsWrha+fCfIYiSn
	 3USM6+Y+PGgyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA774C7618E
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 15:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168234912581.15329.14120556190034947146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b08b821128d7539225e2bec9430e8f3aaac7601f6428b42f33c2806bcefcf054
Date: Mon, 24 Apr 2023 15:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682349125

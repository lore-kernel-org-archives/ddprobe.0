Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4D75A28
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 02:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F5A7C433C1
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 02:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669860054;
	bh=3qSaubCTBxug/9OorEFjZN6dCIcotIaTVDsauhMTAAs=;
	h=To:Subject:From:Date:From;
	b=CaY7febxhL7ZW2gtVjycwU/O1w40TWHqHfTyidq20iosS1nImLgmZiqaslSv98LZZ
	 kxebkSvizztD7jhSyHaWPxzGXG8XxmX6DvSQn7PcBiSTU3LSbfRCttJzhyNblMvVkg
	 gdx/u/Ylt7mAVIq/AipCCdCF1Jh15FhBu1dqZPdJyIf1ThL1FAFwoBUPdvEhljYuch
	 //rVfVwhQcloChYr8vhq7uQx0ukCaHeDNrVrfhUlXyD4EJB3i5E4wXCqV64xMH3ZYv
	 G6P/N9N9YbkQCyBzVFkcDcmI8HU5m5MQU11Dzsoa/6vD5/4cBfOQzHXONHSumKo9cD
	 V/5DITqEbdIAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6154FC4321E
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 02:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166986005438.8521.2042648496185436478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0088282f3c26ffcd9b2ea5907a258a0e90fc2ab955d789b9e7a90520ae164cf1
Date: Thu, 01 Dec 2022 02:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669860054

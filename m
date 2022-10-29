Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4DAD163
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 19:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B77EC433D6
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 19:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667070654;
	bh=3i6Zrt/XclcXuU9cWNdqjQaB5jm9NsmC0I8bBbItZ0U=;
	h=To:Subject:From:Date:From;
	b=Jme4k4hnTRDxPbw5eAhzPAlx+CLcvDN0SwJhCZAs64kJK+QYkIVbIury1cbt3Z+UV
	 wTFH50TARB1s3bWbfp9wi63ZA0FOsg9CX3KTmsUddtsK91BLAboLN+h4uA4UEKU04V
	 iE/nl/ZXxn16q+KZp/odZtRvsCMsflFk9UHtrrzHl37toreCOW6iVzoguJdEH7crNZ
	 KNMHsTzjh1tVt01/gwm3t5KBSfcfUN3Nu6voMmy3yGsDt8Kp3gFzItc8RyqjAg0OfM
	 IgalZRqzZ+sAy69OH4gvC9qIF6umDd1wEu8LvupoWcSNpo1LRx5ZvfHZe9yyRNoaZi
	 23bmgzUMG4G8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FDD4C433FE
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 19:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166707065435.7179.14806912230758236839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5acaca37618deec54cb3ee7cbc34fbc9fa06d9753b6d7f5dd15b3ada89eafe80
Date: Sat, 29 Oct 2022 19:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667070654

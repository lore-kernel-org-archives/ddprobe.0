Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5DAD3FC2
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 11:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70C98C433C1
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 11:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668424254;
	bh=w6nEKMktEHg+LeVg1mkeYdX4bbaUZboJ7zOZHL7/n9Y=;
	h=To:Subject:From:Date:From;
	b=fbWwz6xHDMzDlm1qNWXbxRkLbgE34IZnCZEBuYW2x1W5qB3qaRlvVqegksy7f0VvK
	 UN8qyrgy5hpghMG6syzwzh7GfDh4RH33jf9L+1LLs8W541D2bIpBvO+ukbmlJHF5aU
	 CvZ99Fe6nJiWS4hFLYYlMzkhabQeS6tAahwQVJSGYkbGMtgW3nkovXgevGBPKlkE3e
	 qsQfDJb6i1zUbgIE5D/aIstztQe9znLtnDg1gi2BtENUCyUdMcCSazXpJClqytqJ1z
	 dTf1k2dzNfHq3j1YfvkfXWVEAsMMRvjnMvvBAc0pqR+m9wUrJwBmCw3wYJIFRGV+rY
	 CfkNmEto0+cNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57B53C43217
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 11:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166842425435.24855.1141004566047003684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d82aeaffcc3390ee54ed15b29ab3023e3777aef0cc0cb000304f3727ac98ae90
Date: Mon, 14 Nov 2022 11:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668424254

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7B6263C0
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 15:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 659D9C433C1
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 15:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669822254;
	bh=LEtYi4LcadY79jr5rNnbatH3CVaeAAGwQ4rbsSeaslk=;
	h=To:Subject:From:Date:From;
	b=eaWDUmdpuLTWJ78ZbFNJEyW9H6nwAbklgFkErGuCywZsTk8uNLKKGtu7hMZoPIZtj
	 /jHIu5r+axmLzbiqiyzeEKNLPDu6JK8YsoGz6VZkcytLPBXWt3K/x9O7kU+v92o1xq
	 c2ITipKsG9J027AzV2LwgZXLnuYFgR39I6N4HylAgwJtZimbSLTDKX0aOSsTnlI0FV
	 d5X0lQ2rDxiHAtOStDMIFCD/yUWRpol9HemFiUJw963bloE4gDB9wua+YqDGrACmZz
	 iXjHPmfcouqlb73H5T/1ycyK0iUhz3Qn2OfYVlES3YhhjPKRkLzyBw9n2CO4qK4gIE
	 RYcJTNg2x1DEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F445C433FE
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 15:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166982225431.9713.10155299416427627635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad9f2abc699bd4abaac06b0789ccec1a962c176461c627a47c74f3a390395064
Date: Wed, 30 Nov 2022 15:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669822254

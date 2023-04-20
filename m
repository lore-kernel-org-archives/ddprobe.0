Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42B10320A
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 20:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC1CBC433D2
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 20:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682024225;
	bh=4Ta0aRfoEfErlJMwauzUPZchkgybQKSph55V8o/2aPo=;
	h=To:Subject:From:Date:From;
	b=EYnBhHur26DSv5HUnUuvNHP8K6dWf0lAj+hbJqhpaopjzI36xP7R9nbgRDGtuLM8q
	 2eP6voLAWPLQ6burZmhPTMmodvQ8DDa47/4YDw/nvmhC5CzDsx4xNAGbRFno3Tk9vf
	 nvrdp9tJoXdUfFvLTCTN9Q4JiL1vLTk++sm9byGZRG0m6O1VV4d9jF7Zxa4lOC/tfp
	 xvixhvUSYfH3bxGuAR7GVT6bwNjeTP7NU9ntAtIkMbrunC8ShwifCvbSvC560DhH/Q
	 s/TjluguO7/XGfgojWVI8UvrRlzo8e6yIsy5BPaOJmOShHCruB89UDaMpYqW7qfi/P
	 UsqANk2ZdA0Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF104C7618E
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 20:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168202422576.5818.16143702950316848914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7222a4d40a89eee2855bb6ba957d512133b81798bd618d1301032e518febec7
Date: Thu, 20 Apr 2023 20:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682024225

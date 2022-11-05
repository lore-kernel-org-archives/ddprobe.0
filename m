Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5C832F2C
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 17:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94D3CC433C1
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 17:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667667654;
	bh=qkfd+w8WA7hF8ZVuxSMHUqYVZm5K2K0GFIh74xcbqoo=;
	h=To:Subject:From:Date:From;
	b=Rb/EE21exHeQOug8RmuPqllxNLIQfRX0aCr0BWSdARBrdesTz8yTEbCcUJfdEQpNX
	 t8VuykQ3eWfmQp418gX+IqIhiViVxQC24/j3XafMWbP4E79OFL+2lU+Fwsj7aMlFPF
	 K5MufNYfYNjU4Uo7G8xn4szdqlmXHZDZ/rjy7vCVdG5fm9ccT9FOCf2egOgDSH6bL9
	 HuJ3/5iCDz6q1ss61pIYXrbf50q4uyt+2RKbgsFu/lxwI3pMDc0bjT2lPPpxC7lJlQ
	 26eL9l01T9wyagykymAU3w/gjuh13yED17tvyE92e97Eu3Pk8NPJ4ZirTGbDaH1dWw
	 gw3Aq0aeFRZxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 681F4C433FE
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 17:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166766765435.31253.7291169833925549831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87d3aa0e9ffa11fa6ee12aa65c7d9b968c703c2bc991ecb79527014333d6fb52
Date: Sat, 05 Nov 2022 17:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667667654

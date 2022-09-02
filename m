Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E486F10E5
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 02:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CB17C433C1
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 02:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662087053;
	bh=UulDu5rudOgVL1vidS9QwgjBoQAcKk+OZhp/Q0tu9ks=;
	h=To:Subject:From:Date:From;
	b=OiUmAFIErtduCjoErxoLRGO3wGsHXZx6JA3YYkJ878pjdqIHC7fsb6hxsA4UsPWcR
	 aYIWlmKi1RHALKOgbh1Mg4sD8VoEoX2RWvdTD5f3f02Pjnok4qDRA9QB05BdobrEGZ
	 O8jliQP+234w87i7NJCKrH+imdR+bydSqOG7rnDEc2iCRRhnK3S+SfemhYo8ZwK7oU
	 t7zhRILyneY4LpfOTwEhnBxP2I+BH4p1dgp8nAKC+jZksbjhVf7H57GYkydPBqt2Ig
	 v0pggwG4Czmx20+2Q4R3WxR3sezhdMQqnKHK14EaTzbdEUHKYvpvtCoqtAyGqoe6s8
	 dyu50AKTIwImg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F2AEECAAD2
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 02:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166208705335.20152.9900361024073855608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e60ee203495f993f64061d78010361e750d8a474a32a43b93dd82a77e766c2c2
Date: Fri, 02 Sep 2022 02:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662087053

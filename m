Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4802E637
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 04:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E60A5C433D2
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 04:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680670625;
	bh=DRSPvOaeSvdCOpS9wDWZkgFWgTVSLM2B0826CsA0j+4=;
	h=To:Subject:From:Date:From;
	b=r33S7unikpmmfa6CEc0tlfKGV0MbjAXbY7nLSIekNo0l9YaDDoZhL/cL5nYprpMMy
	 OFFFzi85/tsmT+n1+w8/zdkurSMW81aFM595ao6Wh+/2pFKVinfO2qAOwBeXDHh/Vd
	 k+jBfzKkLhiGnKE21ZJ3sVTuOtG1sy2ZlW8TD6KsgFNVPKx+wYOuH9mRxgyRu0Pe3B
	 f4He1CQLp7t/aNfQMLI3AJ5O3LDYlWGqWL4DM/FmoNLsg7o6ug3L3G0eFFKlaMME3G
	 foaeF0qhrwvaTujeMXbggdDD0zYNEn+ENlk2EkPrzMGbqnZzGQ7yNgReekWEvw3PiP
	 mdrZ2OVlhnQRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C48DAC76188
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 04:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168067062579.14308.1564028446746985376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cda988007d1b4026133b63144928900980b0ad2da252b10f85987b3350601346
Date: Wed, 05 Apr 2023 04:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680670625

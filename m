Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D56CED50E
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 20:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 826B2C433D2
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 20:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673729487;
	bh=9EdgGmbDH8ztT2SqSg1Uaa3otX0oF5vMxbIbDhgJHXg=;
	h=To:Subject:From:Date:From;
	b=WfQ8Zz0SMH44yC2Zcht66vC02Ud13CACMYZvhihm05WF8fr49TyUCBAtCbyJ7oFuo
	 zuPrVOLun/o/07+tY4Ll5T6hL69G9bz7755Se6mnPvqMJ9JcAlKuHvSKIzx2FFhhVI
	 /0+05Sv2T+DaNSC6aiYxsor+I2eh0ddO1AYsHHl7i0CoF7UW56/uj5cAA7gG6Q6qoZ
	 lMz2W7ecm86fSW6AS29hH7glekhq0Oo9Of5i9uSbe5MiiDCLPzzqkPpzp9LuD6yzCw
	 cu/holaN1ao1UqHjxSWknA2BQODycQe6H/BFQwMRCKeOYUdsnNL0Et8/ipqvX/6dyU
	 8mhaTe40HqziA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64222C46467
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 20:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167372948740.7961.15044565584669956390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01b6fd20c96b58edc5dc820b41b5dfe3617733727204263ab54099ea94b097af
Date: Sat, 14 Jan 2023 20:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673729487

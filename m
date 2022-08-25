Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D73671102
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 04:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8447CC433D6
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 04:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661400052;
	bh=vKN8sfxxYk/l6Fh4Kep4hgKFGlhqM8Wj105NVmkUoEU=;
	h=To:Subject:From:Date:From;
	b=NSMqNr1XTY9fXCHC91tHLwW+Oh65wo17igpzBxgwqzTAVqcMAtCCqAv90aGEen/Et
	 ggvRLWptBaakO7fL7CKsza8mrCBh8myBoK2HnEvyUjDvoJQXb/plmZWtoTMFW6xFDs
	 8XTjMG4t3Z+MR1im40I6ptiFRFXvuvNdW/KN3dK7IG4FBBH+aGw97JfWZ5zPV8xsJn
	 LzwurlCbOvNmWnmeaYPmLGW/KlqtwsZyu14Vlx/aTtG9ijQZqMtSzl8p9TRYbbHpBt
	 6dQSN64P6IV5ErLCmb3heA+RA5wosfybtVx8i2EKtTSL0BC4sDLGe9++z8olS0Z7qY
	 JINQkRGePeZEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 626E3C04AA5
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 04:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166140005238.3978.14710417302618649208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9a54aa7ef7da38c8662638686cb51e49a2987db3ecc644770c815884d34b1cb
Date: Thu, 25 Aug 2022 04:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661400052

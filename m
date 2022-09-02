Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C71C410E5
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 04:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78726C433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 04:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662092453;
	bh=1CQP9eYGPNVfh9Yn3v9rwfBFxPQgQ51DmQIAUqshN8A=;
	h=To:Subject:From:Date:From;
	b=YSzWD21C0iHUV+5uL0lpUerSAvfyPDKrJOMArHUqsGexwEFOHUmCbAasHFkWH1C8X
	 8q+geqlWxxTUjwho8KT5n1SDK6yXGtEh0WKAGzOwB8HRPc2KO0LeXQR25JkeTI46Bz
	 zyHLOdsprarfOam4q1MnUO9z8RrSQHxw+sCpx28gayWYE25AdTbrrq71zzHzgBDGWX
	 IidbKR51kZomoANcg++4F/bTH5Vec+AVV9bymh8CPPmBm9Mm6chpB1825h/34KR0Fj
	 3SU3JebaY+Kcgp/3ZBoLcj/kspclZeUyf+weEmJ7jwROJGwm7ENjrAY7ThLV/Hr70C
	 YG5+uIo48c2uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57C94ECAAA1
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 04:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166209245333.13893.10941526574381153941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24beebdf54533a6711119874ddd0bb8d9c92bb1cfd46a6d162192b025bb70a27
Date: Fri, 02 Sep 2022 04:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662092453

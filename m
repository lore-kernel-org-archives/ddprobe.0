Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 313236AB5
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 18:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8967C433EF
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 18:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682189465;
	bh=2vh/+1YQpC2ab0R66drlbyoebFRpS755TpndS8ilu0s=;
	h=To:Subject:From:Date:From;
	b=ok7c9AJOtu4buoz69lrB58ZK5mqblyqTaJrlKzUB2HRfhaqT5kljGJgAA9YGwVI47
	 bkpiVzsArDEA2ofRJwydgPTtVct6yvxdIqK/+UqBMMXFHC6lWouOtz/KAm0l4OLpF+
	 UURNVosSo1i+C2r9Aa+GHPWWSJO2ZF6pxTBmnDzMNtRyFiGUTqKL7G0f4rZ1Cfk7QR
	 /o9Z/Y2HgzLJFatfAJTwciuKImk0KECYesEZ8z6Pp/JWWZoz+Awv5RKqKPlutt9dlb
	 uyCEqco9/uVPh1vBDY01nFLvWqP93vy69Z11DKvk6BmPwG7Rf3XsIfAP9OrAQndrDM
	 jhVZR3lQhUfEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C05E4C7618E
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 18:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168218946577.9545.12810526033006508978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5cb47789a8c895370c0972eec3db99944f84e622c6bad5203011514df7657de
Date: Sat, 22 Apr 2023 18:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682189465

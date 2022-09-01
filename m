Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B53CEA49
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 08:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CCEBC433D6
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 08:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662022253;
	bh=vzEt6xyRyQus05FqpqNUaCXJ/hYn0Fm5x2FCOvyAV0o=;
	h=To:Subject:From:Date:From;
	b=sbD2Bl1sWFH0CURKJ1I+k8auy8rD/GzTDWWv9aYEyFPaEULRUFDXsRUUFl1PwOmT3
	 sRKe8XplR+QJWSc57Vsc/swDtS+RoVadf/714JDAdZzNruHP42EBrT3OsRN96QgwjC
	 GqSe5+Mnp0HTmedDexGSKFkb1/avcaxkQt+0PB6/8ogwRsxMAIy4GgFQFTQRZ8wZVl
	 io9/tAj2bJmWHNhsi8+8Mpe7k+tg90EENM0EHfTORDUK2a6adJ6MkZym1beuj9ZHcd
	 O2G39oQEQ1ouUHNaG6Xa3Ivba3lv6c3XYEXhzOyTUhyCAqehvToIuVZW5OYLY4YDSU
	 3qD4RVc98FIHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52F74ECAAD1
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 08:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166202225333.30234.7814966738844675234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07e97cae3579dd57db15afcaa321b9343d8c2dfd935afa56493a79ea7b5cb691
Date: Thu, 01 Sep 2022 08:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662022253

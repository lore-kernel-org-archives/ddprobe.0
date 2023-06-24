Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E4D7360
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 06:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C242CC433C0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 06:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687588388;
	bh=ip8TqCzJRF9jC1FYA8VxrFoivThbhk/lbnlbGafPlC0=;
	h=To:Subject:From:Date:From;
	b=Numlteb0fcQidmrvfiw2FGr6qChMg2ZuwZTyVq7fa7Ey8vPMAPPu8aTn9BIXoFEWE
	 sHWrecqTpkvYK2ZQHKoS9V9v1sEcG55/foYn0umRxlZnuEHIil+I/ZdB4duBZKHf2S
	 8oG8D0iozf8RXNfH/MycaRx7Yku83/SICnSOcIekfi6za7UgM1W2gmD04AzU44riHu
	 rn0MybbrLlYoS4Mge8w1IClt6CFdypWdU0OVijNEHeOlsgikC3Fs1wEoYAgPfBwdH6
	 qQSTe2zKABOUS5Mn5yws4I3k0hdeoKRM0/iP0eGmelT1naOkgnWzczLTPGEYWirHpZ
	 2/kpBiQpGMxPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8FCFEB64DA
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 06:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168758838868.26523.7513910441550998442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd73c5681277214b93b04a02edb72f0d54bcbac5e4abd49ca1b1906e3d6f2e42
Date: Sat, 24 Jun 2023 06:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687588388

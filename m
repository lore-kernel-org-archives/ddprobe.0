Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3515C46BD
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 15:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7094C433EF
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 15:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677683765;
	bh=CwYbG7sK+xkcsyNAWK2AIrQOy+t91nGGl9RyKom7AEo=;
	h=To:Subject:From:Date:From;
	b=ka9HEQsK4RBsSuBNRU1ksHjtiopV7vf/x4C9znXH+g4XBS6pburaGstJzhzL/slUf
	 1gByUXNGr1VbYA9/iVDvLx/RxSfru5+APlmzluTHm6hiNyYIlbkFOY3M5nMAbav/2q
	 XX5Hpveros9qUyfOa9hv7h7bIaQ+Nt/gWHimfuoLgRS0gl6vhSWFKwYC2FgBSI7Dcs
	 eKyUbDeDsr1z5auGqF0Iyez3RI5lLBRCN0nBNwo8YG0Tsl2CX10O4iVxMmvnic4pkR
	 yzgqPMWcYC9tWeMQOUrhJahRfUGDi941B2VeDAZqsoxg8lW+cCnF4IMCT+kleKdoYX
	 uTsNvSYnuDlQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA6C7C6FA9D
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 15:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167768376575.20321.17024117541453569993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0193af9b9397d080c57aebca079d736ef1c9a017154351c58885092116294e2
Date: Wed, 01 Mar 2023 15:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677683765

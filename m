Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB09B7D9B
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 12:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65E71C433D6
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 12:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662207053;
	bh=x9aAO7OZfccv2VKVnncv+Z932S0ZAvYK//RrpQGTwvo=;
	h=To:Subject:From:Date:From;
	b=VHY2rytZPlV0iRqcrvhJYJ+230xOyOEQGs+4Iq8OQotiTJyWAJDvnVSl6PsMMMwAR
	 tJKJLBvRf92kt+YyGiYj0uPV5zdrGOV5rXnCnz5wpADqw4QuMvJxPyqpINPEkApUUF
	 HSUgEj+u16eVd6pZ8bQVCFcA/ety0lj8qnTk4Yh3X00G4Sh5Wdcr6x5SwBDYR3K0fC
	 E2f+cLnYSuuHyigazTaJfz+YDoZkrKllE9hU+U9+xFw7LlPvDP2Ri5Dia97YwChtIm
	 DjJ3gPfftOlvCEoWFDVJMDxhymuEkU1UdoJGoqRIxsdaBy4EyABgeyvT/LPDkBn4F+
	 6Z3rN1xoQhnEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E494ECAAD4
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 12:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166220705331.26052.17459655214725346710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e482dcf8074e8d902e606cf534109d7ad54defea150a64938b33e2c7d34f66c5
Date: Sat, 03 Sep 2022 12:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662207053

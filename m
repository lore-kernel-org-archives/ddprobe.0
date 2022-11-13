Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC9101850
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 16:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EEACC433C1
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 16:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668355854;
	bh=Vm2nVQUIz7Ro0RVhj2azFfsgh6ESY7iWU9/fui2MSxQ=;
	h=To:Subject:From:Date:From;
	b=WMXbEDcLinrtCf2j6hRyRzcX75IIZAYSjL5b2HouxiitxkK22tGp8p6e8bwrB2+Jq
	 jzT6wJDHMIxwuNtf3+UNukCsSGc6p5Xmgd4tOKEhLSRFKfcHZ+m/j6hWbimchOcjEW
	 v9gkdfDAidGvsWD5Ch4GhpaSN1umjfy4Uy3cgHkp5LEo7p8lHk3UBPQnRa58C8hBiX
	 uQU9k0qMiVOpekfIL3s1EQlIkGBQBNrw77z7PqHlVPdXcOoX7YRvjsii0UYyLX+wjy
	 HXCyOpj0sYvwb/HV/mZug/dH8QgPhj1H+0YiCA1BIQL2/38d9gcB6ykKLygIIT5kG1
	 X1Abf53pM32cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53E5AC4332F
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 16:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166835585433.23208.2796762197699336022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1eaf06f392d4a73ac20d4f979036eabe10fbe470a4fa298c33958ad351294520
Date: Sun, 13 Nov 2022 16:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668355854

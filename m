Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7E0320F8
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 06:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7606FC433D6
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 06:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665642653;
	bh=qPzFN2oQFBOXDtTnpaFx1bMJ8v57Ae8wb9XYoGZs5TM=;
	h=To:Subject:From:Date:From;
	b=BEYIZL8ht+eDNgGGdfKUkeaMssj4bfcNlBI1pA0dyu4z0NjT5/qm0Osl9bCyCtFUa
	 Q+Hqc6XIHLFKesCto61H2YUMkFn6TXm4XrTD9IlzB4+eWPerc3AcyzEMXh/Q/+sD0U
	 zOqfw6+aZc8NPpBx6GL9ycIUeJXdYQHVqSRnHVwvmmSi8gzp9Phrao4JlSMnwAoUF8
	 wIkxSMl09NLkub+e81aNTF/4nhDcW2CjnF6F41mpWAUqoFgjuZuhz/LhOFwCCYLfGh
	 Y474SyCFOBNr7nyRPRDs/8QiBgpBQSJmdgRHOsc2r63Apg5Iitt3VqkHLmDGtOmKLc
	 kW6twqlrta3eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59FEFC4332F
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 06:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166564265335.27133.12320534585409356238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1c7e3631902967a6f98bc5fe0b86d444607f6bb115dfa4d688842a7770af132
Date: Thu, 13 Oct 2022 06:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665642653

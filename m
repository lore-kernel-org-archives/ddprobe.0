Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4F757B
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 04:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72D66C433D6
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 04:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666411253;
	bh=Px9pyH4Qt3vkrjq9nSK23/Q8ay19Z5jOgYRLkpty9QU=;
	h=To:Subject:From:Date:From;
	b=jYlxymQx10oLPxuPBMGnyuv1nlu2CNs7DnLLa632dmafhxQD7eK+7eOJ4YzwW8PPZ
	 jgsCrVUo9/dKW3SQRU0hslS3zbSD1hDU8foiZ+xZCpSFUKwwterJnDICXTm5ddTAvT
	 AnNELdrQOy6C0BFJNze6pAGC49ST8CiWu8gcGhMZXPxSeSy3y25z58dEBpHf9/bn//
	 YQhI+6fcdR0muFVNdu1UVS0HXAi0Qg2YxsrEPQ71P5lChkmH96QAE27OQIkQI/aipB
	 nC6d3Fgmgtfl4pzt2AzhhGTaAVBazjUgyTqSvY1JPV7D34nRIwkIbarmLLZZUg9BG0
	 agjdJR07HHUmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58063C04A95
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 04:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166641125335.17765.5842369223418499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf4124c89c94b3b1568e76b05cfdbab489559fc18199a61fe7f3023065654e40
Date: Sat, 22 Oct 2022 04:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666411253

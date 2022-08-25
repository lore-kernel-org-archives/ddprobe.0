Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D26852F57
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 14:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8457DC433D6
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 14:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661436652;
	bh=vP7ZlJN1eJcsVqnWwCakCRp+W5PN2mO2K2jszI7Z400=;
	h=To:Subject:From:Date:From;
	b=EVJaixHDWZUS4GrhDGqWJlphej2tKixIKJeGx/JACHgc5sezv1V4TbSQFMEhDT1Rf
	 VQnGfEHLiY9P06Bpu01wzqk3oNdSpZqBZpZI/TAZ3bfQPpLCArxvSfYza4QLCBs2Hx
	 tgCI63lsA7iaHUr6W4opmS+d0Bl6HEFKNoeNixzcuQR2/nYSS+MdDWWEjhBXoFDgwL
	 4RmPDNGiP6Nh5/1/+vGCexnujBWs6PAMQj2qkANzC2u3Jf2kLaWtTrRXpmHGGb1rky
	 A4zoR0dZg4QDMcODNgw3CUGTDeBs509ZZhMQXGBpDPZalZhOLoODPeNKlGstPUfQGV
	 +q+lu7UMJ4PUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67750C64990
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 14:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166143665240.10531.6614685774967565547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6594d8f7ee3e87b20c88ad47a6cd17560567416cd44dcdbba1076806e3624e1a
Date: Thu, 25 Aug 2022 14:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661436652

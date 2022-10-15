Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0E6F363
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 19:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79896C433D6
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 19:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665861053;
	bh=jANzf3ruc3YDV4JA24/veDh2tk0qYqqF7LzVcGRu8LM=;
	h=To:Subject:From:Date:From;
	b=AvjxwmIimx5Ut5x8Zop0IJyCvU7qSDCWzygIGlFIwJMLuMO5ypT2VEuRNlcVls5Hw
	 EkZzssJrm51nlilTstuFcobvstf5IGqCaeYD1/fie7H3fehSby2a6hw6rePcmG0G3/
	 EQAB/5c0x/8Mm1Ur2iGdLHUG46zme+Enq05e26yjYQRKMq/1ZO4S6owJVd93+rUX17
	 r3rxW91v2P2nKCjY7kyiMg9taVJNZxu6E9zm3rJHrY0Gf2C1/+g/srxzMEXsVPNpZf
	 WXQOprA5Owd/p3gB8YUEl1TNjJIK5qeF6mKnWi+HmXHjCQuSsERse/SEFjOSTeTlI0
	 HTu+dnhh6Y/Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DEBCC433FE
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 19:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166586105333.7761.5852899066550389976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8aab595edfc9668d70330e17e2c265f64e8ff5a573f2ec7c8b0f8612af663c0a
Date: Sat, 15 Oct 2022 19:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665861053

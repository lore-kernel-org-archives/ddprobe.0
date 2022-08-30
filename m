Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9ABF9366
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 07:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70566C43470
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 07:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661843453;
	bh=gjA6wx+pDe0CWZJW/+BjSOTywGWgldkbXuiNrD41eVs=;
	h=To:Subject:From:Date:From;
	b=r9usyx/LNiH0//1I9sXAMGnQzPAQg3wmY6nZ6i7dNfdd5wiIia4jDfWWFAreMyt2s
	 BXD0J4iDWPY5MHU7lFSar3N1jsUKI2O8lBSGY/G7f3AA7eZnDcyr6jwpXryGXuIHbT
	 bm1/NXEQJFq7A/P07RTyhM78GeEvmeUw2R9PXhO2O8EYoH/NRrww41Dh3l/g5w+hFa
	 FySHTykI3BYACZtnpimdsSwodOqwMoqKzNlfArdqzLWbqpfVP4XKHDjV6FR2qNEsFz
	 6J4VD1sg9iC0mDdQgmNgPk27FnxrAuN8bbwOTViB4rQJ0j02BGTQn96MSSA2AQT8q2
	 y/mDcou5kaX4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 569AEECAAA1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 07:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166184345334.16849.14723439223065579489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 730526d50c18596d03101278c05fdae23eca3436a93ebc576cd78e1eb349db66
Date: Tue, 30 Aug 2022 07:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661843453

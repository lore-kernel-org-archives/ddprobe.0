Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5A28194
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 18:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8777AC433D6
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 18:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668796854;
	bh=KepcGVzwMCvZ8Z5flAgv+8d5ILi6OKkodoipEPe9NsE=;
	h=To:Subject:From:Date:From;
	b=HtSFnIvfh8Bb0xx3vIBO28cFwItt5YZvaT3g6IdWCE316hconcIUnTyvqqayi3KHB
	 pnyyBNqBTAhR1K/g1A/KJCrX0O0e6tG2XXftX/ksk7JltCPoKKUqHg6irDC8ljFkyT
	 ZR66zl92VUaieS+01TGW4jmTEnX2yyUF/tN7m/UyCzWdHT0neVQACqx3x8F01Ur/lO
	 aK/sf48rdk8v6x0XJ3WWaCRrr8ddnizdo4MMott9J5CbsJhCpb5mlNn7UCrZgbnrlz
	 debQm6oG1LmtFBnnTj8e/bkSP7qRNO2iEf+IPNqOmJvZFNzBKJjV0qjMpPy14xch78
	 10NIgIKqRq3bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CB9AC433FE
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 18:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166879685439.28388.8972128782792192751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48e8f6b33712f7df6ddae60a9b4983d3dadbe954371691385cadc0be6f4975b7
Date: Fri, 18 Nov 2022 18:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668796854

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAB84366
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 07:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F79AC433D6
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 07:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661845253;
	bh=HV4cAQhTny66Isf3+IE+Lr4MKZUe6NOKjOkcq5MmEJg=;
	h=To:Subject:From:Date:From;
	b=MrbqllOKvAa5fBA5AM0U5/ASYBdaRxEuHfbGqFFTKX8GXCLFe98pgTqsIzn5KDdrl
	 X0VaP6XlaUlnD7nqqD7mdueSro+/bYlSlhZT1OWXikK4cg9lcGS6nnXAuhEdki0xGS
	 iU8/XaFu3s44QhrHmWqai48sGEPzK0tFHobBAj7KmddWx6lA4cnDBjplizI5OiOTBa
	 mPnsUw0qwd3tNEFBD59iqxC3v6PogbGq42WunAyuxuI5rTPsjUqtXbb/fkimrWuk6P
	 32l2qf0g4Gw+ZfqotqfQbIASoxmj0psXjk0x/DnNhTWjTG1lnQWyssM3rGXkvjr/2L
	 Ja7SLO9hY011w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5264BECAAD8
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 07:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166184525333.22518.5556640836902921067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 196a755ab8f13f9a1c66cacc35e33d52329e8683fa35609026d151874859af94
Date: Tue, 30 Aug 2022 07:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661845253

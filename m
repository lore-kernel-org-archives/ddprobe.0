Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C510D7C
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 11:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78D9EC433D6
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 11:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668596454;
	bh=ppeRPOVePqfI6zdcookIV7wkS9krMc7GiAN3AvqhQdY=;
	h=To:Subject:From:Date:From;
	b=D5OlLjPUxrRDPEyvXk17ANxNRaf34/fvDxNOTYzDLCAbVpGmXl/wV+QW5Rq9GcDjQ
	 rEpPKSsqjM8aKvhjb4UFYU/t8YokTMZQVQ88fDodaZajWqvdPXRJLmqKkkVDN2z/0W
	 8aIKmxJYWJ7KP7LxywuETv/o6dSgisUSIHj5AlsKHxk0rOfbbEdf1oxcRink3GwdFV
	 nK61z67eaCcsMU2EpS0Z16rplCMnTePgz27ODwjd1EstJthjRuT+bWBqtHTWXnU97L
	 /otF8MWKey2+JZFN/cV9UsNfsWTZcs/vphGM1G4sdWmTU51NGkROn5dpZSp9Jc6NIc
	 5Ulhp7ym0gT8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54470C4332F
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 11:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166859645433.1149.13816222906957342279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93e19ecebd02b416f34d8cede56faa71189411d1d093edec7b4fa095adf0573e
Date: Wed, 16 Nov 2022 11:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668596454

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3CF07C
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 12:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7354CC433D6
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 12:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661689252;
	bh=jB/OyQCQiygAGgHzIx4Ez+quOYcD9M68VmruVr1rel8=;
	h=To:Subject:From:Date:From;
	b=RFV3LOP/q8xg5vC9G7aeqavXemOJI+2UnPDLJL//b4vYVDGegT9QfdDuMhiEtpAam
	 XoY/kODGQuu1QQ4HKvjOj1tm1z1SYEmn/wmSBfvXHCEVhZrBTEEwvZJu2jobKoIkYa
	 aqIuOxgaMTd5orxUL28LSYE/uRn2VLF2u7uKnQmgWuu84YyOf5Ha+42AWHloUlZ+jp
	 BPnXztLnEi1YU7NSksVFuyfuhKNq8quqd7YngX7K6Nv0sW8MstIwuz6LWlDzegBCrZ
	 ayCQ50LSSYqBoGIRYYEyhp9Fyq1Z+BTV0KcuCz/01YwsVrBNH4ZjqDSEQKBGirdxBS
	 9jcL41EqrWf3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52A60ECAAD2
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 12:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166168925231.30496.5954526999442880142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 292c98f97a680d3eed58929ee77dde28caa430ec8279b33ccc2a5839b96308e8
Date: Sun, 28 Aug 2022 12:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661689252

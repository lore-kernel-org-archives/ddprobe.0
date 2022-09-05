Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D48E5468E
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 17:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7468DC433C1
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 17:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662399653;
	bh=lkrR6/RZUPUsd+8daDssw1+hxbxoOY8exPbGFLIEuVk=;
	h=To:Subject:From:Date:From;
	b=FjdNBt5NJzA8tzkB3PjsgqzvJdsBzbYSCYlXqhAnvRWcQLrKg8iytcAa14MB7LOdE
	 c+H4zif6uF95zv5PTU40lEgSK/Pi1ktm2M6GYMOvjvhuwWVLbYpJcvnPitnm5GM/AU
	 VYq+tn7S9+36ruDpGzpBiwvG6Cd+tYdikf0QOpBD1Uwk/+Ec2GMApMP8nOFN1pQAVd
	 nS7GV1Ly5EBGT/iFhzlmdDOC5T9JeHUt+Bkm1DMVydz/8A4Y//5HmZjvaDilJfo1mK
	 geCA+nskgoXaD1N7a9DkiatD75UgAwDkKb5Q64pEZBlaCWBizuX5KhytolMAv94TAv
	 kgAvuxhBo/4fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52011ECAAD3
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 17:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166239965332.22854.16496348813225163560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b899461cceaf2378e9c6fd705055a8266aa8f0de8939fd5098d026899698b252
Date: Mon, 05 Sep 2022 17:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662399653

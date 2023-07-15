Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45C29163
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 04:51:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1E81C433C8
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 04:51:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689396668;
	bh=HJ6jcxkYxj0fdIuHJtIRrXMmMYW8DBHzZowlJmWDxYU=;
	h=To:Subject:From:Date:From;
	b=Eh3BPL3jIye22JvlQfpOWOWnw8/n5M1LeI8PSQQKakcG7ndwqPAMbN3ieISRVWBcc
	 9YEKR6PEvNrpol9/ANvY+YzmUROKn1YhKdC5N3tbCB/AvYB9DaL/9YntIDH7kjayJ5
	 +RBxkQN9w+ZF/yTnJ7tOHr9bJvksFVqKc4nCtZW782qZRRyrQlg4ytbdpCALpP3SC5
	 PlEOw64o9Ueo4GfWHCoSbmJaWHiqAlb3Vm+FK8+at4MCWmGUnC6w+fVoYW9l+o7ddy
	 anpkzyiH0bn6JBQP+1LLmiIwSBChHI7OHSDz7n3lsrSdYyPoqBh8oeblEPOS7kVYeo
	 Q1LO1pKrBy0Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3467EB64DC
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 04:51:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168939666866.25613.5905598564811519405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0eae5c3ee8396bafdaa674d59c9c153307f9895973527c7244ea51b5831b4816
Date: Sat, 15 Jul 2023 04:51:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689396668

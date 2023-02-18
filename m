Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43C4E642
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 21:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB62AC4339E
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 21:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676754965;
	bh=/PvBTBIsUndeXySTig25rK2M1kF5JJV1IP572ckaHAo=;
	h=To:Subject:From:Date:From;
	b=quR8TLOV7H3vcmNpIPJx2LenwCcEQFdscVRypTOid0amPMSYV6r+2rvc/3WA1AZKw
	 jxoLQ14VQG9g5dtWRKNfYbx4GEx2rPPDVp4By/JYRNyQwqlrh0FcZHq7Z+X3Lp3qyg
	 Q+XuNn0zlVnf+G4o7EREaJPluiJbZtXpwOPaDzSxKud5k9dIqAgvY5YNrczk8nln/y
	 gSgAEebk/t/W1ZipvEJOyGbPmyQ0krVHx/W7ll2pDaq3qnCVht+XEoeY2k3nApYpky
	 uu00aKDfStRxt+whVT89nGx9fGLILn1STLeamkmxD7wuiSxGbbaPNG4K5vkyZRSVrE
	 /ILAKTgf0CfBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFECFC64ED8
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 21:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167675496577.10223.15872067031686715074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80a110e194f545e678647193cc8c1a6ae6879a07c4470ec037e096b33caeeb90
Date: Sat, 18 Feb 2023 21:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676754965

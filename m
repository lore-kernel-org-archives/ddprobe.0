Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D601723AA
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 07:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DD30C433EF
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 07:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672559487;
	bh=MevdDdH0LZSomoswhyI3UPDwkhqs5PsIRafmbmeYitk=;
	h=To:Subject:From:Date:From;
	b=hjDJqIvLEKLUCKzNbMRDXsuoU7jV+aWDrt7mxc+ESw/S4ZqBzN9pUIV8wdlcZ23oZ
	 OFRulN5UZdQKiSpnRpyjq0J9+aM5OYb3m6at8UCU6Z+Dfb5ozFVQ7nT38urLf5Z9H6
	 YEZKAboLNpw8vtb2WZ1A5kAwHYZSha/7cLiO0kjn/3EYMfYyHFtHRcf3EIBYahRXBL
	 lykQWyZj8Gi71icWbtSH8f/N0M3f+zXKmrO3Vw9+piwrXxCWnjMTtnzQWl35nMBvYj
	 oKMkvrJjYwjvsp+lyh8J5s+ec2Uc+1RM69MRtMW9sO63EiXiG7GV0K7kAFuHMDPMpT
	 7GQZFFMQgr57Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63372C4167B
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 07:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167255948737.2864.5649180920494301733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce364ce11993d1a1eda02a9891bdd290dc4d2135ab2b4b4068cd30bb88ac0c02
Date: Sun, 01 Jan 2023 07:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672559487

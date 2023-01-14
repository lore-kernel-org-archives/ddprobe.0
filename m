Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE79CD50E
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 21:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86B4CC433EF
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 21:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673730687;
	bh=aAAk7qCJixwLXSdalsCo3xBFoZwfj1KdCPEj3RK7tuk=;
	h=To:Subject:From:Date:From;
	b=ZdAovTOz6998zo4C4HFDHaIPdtNn62w/XcBLoseiVor/MwZh5ttPU6N5xD398R5Ik
	 lQqs/6qqCqGBqRgTHequdaVC2a2yMDlpQflZYFY6Kpyu6VCy+aZFPo1cH9Hbn8m2uo
	 JLmycFDMSoXRRrXj+btaHK9OXAqkDcqIRe8izfzaWxxUxX4f+XQkLtRcunFItAuP2Z
	 /twM62yO5Fnqz2RnO+/9Y5n2uWDEjfCGGd86rWLisKcXovWpqj/pPj1U3mEau94W6V
	 WjFN/JgtD6q99/SyPJEs1LL8EsDBc5SoPLzeHxlCLA1Q7MLegk4siUGAY80TTT/4Ii
	 6Rxg2YfcAfLOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65CA9C46467
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 21:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167373068740.29624.15935523664681130568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d78fd90947d6a0778b4175ec36b70cb9c29efb9aa1564b6d061a39b206fb3f9d
Date: Sat, 14 Jan 2023 21:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673730687

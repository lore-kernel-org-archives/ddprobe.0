Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0A14185C
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 13:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B51CC433EF
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 13:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673098287;
	bh=Kb3u6chpwI5ROMwaSDmmUEBPNAcJ0tu6ZuX9T4KqUUM=;
	h=To:Subject:From:Date:From;
	b=TcZGI6uMV01AuagPawz41zado6ULSFFMKRvi6xO3hnF6Ik/BFGNkzxOI0qENWY699
	 vQCzegsnZRhB2g0/jaHyI54mIfvcEwsmdcb3AAeFouHeXpHKNZQKlparCeY4u5954E
	 DXZz1p30y0ZDACj08kVbv2JiNJiPfJNh76pp3ZLs+9vvT3wrsFUXFrGFN8kCedJrT0
	 MAUC8amN6Qwqi2SokK9Ruw/LxOIJa/0BcxHnAEkeFRP7jo0ijFoaNpfBOFNkH0Yll5
	 baqcuxi7y7gvjJmY0fLNYBBq/seq3lh4SeOhIa804msczLWLzsR+LuBzZHETFc4i9I
	 Emd5ybQfcyxiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D594C46467
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 13:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167309828742.25395.4446522734252380816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0d90e0d7464ddce790d8166d7ec2de531a4150b95da887715d851b39302ef92
Date: Sat, 07 Jan 2023 13:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673098287

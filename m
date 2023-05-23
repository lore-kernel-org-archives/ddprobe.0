Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53F521EA7E
	for <ddprobe@lists.linux.dev>; Tue, 23 May 2023 13:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDDB1C433D2
	for <ddprobe@lists.linux.dev>; Tue, 23 May 2023 13:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684849986;
	bh=/BHb34i6b1cKTKyotNF2h+QxhUfMazSCkHnZKOGDTe0=;
	h=To:Subject:From:Date:From;
	b=ihae3YxVdqqvVfmCRYcVLzHF2PMCq3AqGzL6Kt2JxQoRC6cnjTNJwo8lnL+d5Z3Qs
	 fkH+YuiU8kieqPSolQ9e+UTwOFqrzPqZJdFi7MhR4c8V0ywKordYK5ar+FslteVmfQ
	 TD9jUnBxSnQ1KyfX/rB/dR7FV4nGUxJdFd1Fm9iwBAmYFWNyLWg3nPgStnoj2HNFbj
	 wKaLyXk599nu+jABoMvdUHkR8lOwIhqI3CWIgj1XrADwWXqkozdBgIN/OzUa202bJG
	 b0eefEUZQ8IbafdrPc+VwLDlzxQewsfTLP4vRkmzkWH9UwXtnItELMMnXBAFmg95H/
	 PFblI8rCm6HJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D28D9C77B75
	for <ddprobe@lists.linux.dev>; Tue, 23 May 2023 13:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168484998585.12255.9523450771398901286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0c443bdf93416e766e94b210add06f852aa808af654205eb36edc45342645bf
Date: Tue, 23 May 2023 13:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684849985

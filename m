Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3EFA7C
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 17:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86D10C433D2
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 17:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673715687;
	bh=4Lsau2+A2EsG4oNeWYMz//plSgKrbrKzIvD1mWq7SPA=;
	h=To:Subject:From:Date:From;
	b=H0HRmuxj/RRk6K+/uL2sx4J0DwHxPbk0iZ7yPGALmI7qDnkOcRV/asV8zkfn9kuzI
	 3iNLAgC83KUTyVIpr/0Q8YmG1C8BWmtKZbymT0exW6yXfi6oroDyo2lWlCl63OhzQN
	 k4OuArcoDfhEIbUpckd7rFHHuXgJ0pZkfwrV4FGzQsL1OYfJePc8GWVKDMvJygLPrF
	 VLg6VsuRBi7pIIeXj0KBHv/1Q+leFqgAtQCpPzEf8wduye/jHFl91QWWJglaK8M7xA
	 Hq1zacmbO8Datt3dxlAPc1gY/Y9Ldf9xnP7mdypg0fQxWPqGzKzOGbN4yYFl4rIj4p
	 e1Rjsp2EKsf6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64147C46467
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 17:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167371568740.21416.16158477026624682107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4421c03fbc02e97e695621c33661650a8525d1609dfedcc7745e1586796fd485
Date: Sat, 14 Jan 2023 17:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673715687

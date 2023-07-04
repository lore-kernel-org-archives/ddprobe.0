Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F71363F
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 05:06:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5437C433C8
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 05:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688447168;
	bh=KUGCxlHOB5Nfti1HsNWy814Fx7YMRaPCpRuXzL3ZG0Q=;
	h=To:Subject:From:Date:From;
	b=BqV/m4DcrKKQ0eL1Leq9msv+2YzKtkJ0R0VEIuI7Bu05KqOFVYohQG4+K5DbzsdsS
	 znF5DYBdoAyxWWIzIQpH+E88WbDiYcJIbQS5pC02425aW33uKjsREVEfBSlVoHb/pF
	 OA8JB9slAGvnxI3hKp47Q1BxPYsUmyskMGUzwvqyIMfhxkCQVo4vlw70A+giwshpIZ
	 PluQML0SUNvkAS1yHa/edcNCsXkgbJCZLF8qr1ZsoMOtCJEQel6wul7UMHCFRyMSab
	 1mzDDlJx0tvCHpBD3EM695P7is400wzNno1bDwfH3Jlrh8JG1icvLK2K11mSXK3LWt
	 cmJl8jmMhtFtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6EE3EB64D9
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 05:06:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168844716874.3780.8783535667055069789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94253863b6d2889456391c0c7092758a54dce6a542e7be0503a98db8ffc4242e
Date: Tue, 04 Jul 2023 05:06:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688447168

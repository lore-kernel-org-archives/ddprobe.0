Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54C6E138F
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 04:49:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAACDC433C0
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 04:49:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686977348;
	bh=7vGa/34wGyl6gWZZJ2+bRKVYPQZUJtjMksaMmyTkIAc=;
	h=To:Subject:From:Date:From;
	b=cIBX8fzJC/tBJk5ybdyCa+wz/h7Jua68xMn9kDLuEzAFyZc1Tw4JwUcn6JpqOg4ZQ
	 G1Jr+bEEkBxbVntHvBFizuAmY44SvzKvFqcPUSmFGWa/F7lhyRcgbYTJqYRgLSJYkk
	 pxYOs/oERlWTMSmPnrSyv2cTwIGvRjc4LIrn7Kb0/JClcRmF+ObQZRQGwjP3XJNVUn
	 Q1NcTKCwNG1CpCINlc3r+QwT2EoOZ1+35acIDJ78z7pkiRC/rj98EqskcvfqG2ilB8
	 LS0s67wdu23ZGolVCD8FUThxjcTK7yii1mnMULnlYWtEFlmWsC70gG9Dr96ABvHjC5
	 /C60JikL6d2bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAD2FEB64D9
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 04:49:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168697734874.10844.7238643353136713142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47dacf90c1fe632c0292fa12cecb18681191eb29e1edc98a8d13802ebc84b19e
Date: Sat, 17 Jun 2023 04:49:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686977348

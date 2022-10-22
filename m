Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 383493C05
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 15:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7374C433C1
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 15:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666452053;
	bh=d96hIdBFKLQ3KeYU35Fbh8ABKlXqsn4BH+zIu3+1QgU=;
	h=To:Subject:From:Date:From;
	b=jO4rEh/E3BXUoPnY/i+lgId9GzyZ50LBEUxwZyBVekn6gkzriC1iaSZa+Gh9Et9q2
	 bAB3LGw4s1Cvymeeamg5+38RcXqwfhNRGiaDhRUyaAP3VLxMWKhSQY7JD9t/8rXm5J
	 Bt6qNUvkb9kJ0jBOweSx/ob0ePbB2LMJlVRBEmXq7rvaZMzMF3FTrk8fFJPukdgwMd
	 3Wh5QHsDbHIHduSSjh9mKqYrcvg0+o8uPrvLiaQGwfAf0TKb+kb/qxBww0PfwTqUWd
	 KG8d/svUwsgZN03FSLJT1ViilUyLF+gUzIZJlO2UlcvBunwXJEh1JAjwW8FHlyV3Ig
	 WqqmtXQz2FOcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DD2C433FE
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 15:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166645205359.23615.17477805696244294562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19ef2597c43f5dc77fdc48d46a5c0bcb23d23c6e2135fa8ff96d0283b7e4256e
Date: Sat, 22 Oct 2022 15:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666452053

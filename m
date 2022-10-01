Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6E4F28E2
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 15:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 776E3C433C1
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 15:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664638253;
	bh=CJPUy+mXqDElHv2NtVopSIQZNKyewVMH56fpmEvnUVU=;
	h=To:Subject:From:Date:From;
	b=GBSfeEc1rwC/NRep7Dy9sAtJoZezDPFOwVmuqG+m/toLgSqJKzwu7+Vv8q5IiVt7z
	 uyoBQUOfAx5pJpWy+ZmO5hhC5y07SKZZSvHMJLEtJYLlHqyMYAa51fOFMoQVrEOvFo
	 9vq7XajJr0BfwWiQbA9YxndA4ELeSxgnOvG0nFMMl6y+60x3MufRb9NJP4QzlwkGAY
	 dpDuDZLlb4dz+2vyDEEyOSCTwQD918qE0lEKa6ByqEBljgNZwB2t2UWuFzQBWF1jpa
	 EUJr/Fu7KBs1DPOmCpi7dVb7bmNhtCfGDITk9wRwiqIfOrunFbcM8cKFPDBt7+E8qh
	 moEmQt1+heqbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C47BC433FE
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 15:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166463825334.30189.6370969910964872568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 200653582880e274a04eeeafa8e7c83733653f4dfe4971734bc8cb37efbd40ab
Date: Sat, 01 Oct 2022 15:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664638253

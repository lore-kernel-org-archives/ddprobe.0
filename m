Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 610307F
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 12:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6ABAC433C0
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 12:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687783388;
	bh=RnyUeYZLClEyYCUb/DPHfga+dj9brsxQ6gfximhrOpU=;
	h=To:Subject:From:Date:From;
	b=Mn7eS9uzBwIVMTa+XVKmSwlKAABzQMXTtkcnoRlg/N34p5vgZsWRfUhXqfM/f5OzQ
	 vPvPdjWDNV5TDQSYXu52oKN37KXCZKZXs6ZN/Y37V0qacrfv71CFaz7YtVsACN06J9
	 NzLBnTOpQasHaFny6SKTWVeVg1jfrFYE+BTGBwcNpZ3MsfYfp2wBQBDtfKCguoqvjr
	 C/CBnzBhs0JPwTnmHmrVakd4lZAVn5IiP/ewmT9amK8lp186v+g7mLYZICa3n0WtbU
	 mrrMQGBN0Es+5XxFO6IMgTrhD5ogWligaA0gLSwQnRGs3vAQFtKQXvWG8QvqBUMCz6
	 K/eiFavLVUq3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0BF2EB64D7
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 12:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168778338870.5849.6715073889464720507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4af086726da1442e61783370fba21e15cba33a0f1d5df44ae65def8e9a45f87
Date: Mon, 26 Jun 2023 12:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687783388

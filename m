Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8E6036E
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 04:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C29DC433C1
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 04:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665720053;
	bh=28jgMV591UEhxKBMaWppQKgZPc4dwP5p1TEV54/8p2I=;
	h=To:Subject:From:Date:From;
	b=Vk7Gfjc7CtU07cy8+2XskMMd7dFrhe1GuY4O9bJL6CNvg1BPRvEKF6zPgSC+IZ73x
	 l9jmthCaYehO10beqSxQcvoeIxBDNIbOb0wHiRy79QSnxyBQm9ICBq7j5kZfVhzIfr
	 qwLQ6wFLHVTV3WL4mHvaU3hm7lWMahFBx9WgBR5gQNfZ7ZioUSg77jliZYpdGXqyA/
	 rJGjb1oihbG6RDWnMCjfUV3Om7fS0sLH2NpxQ1a4VDJOcORFQCUngzr6JT5DTm/G4S
	 ozSDX+g+pKP/dJc/3WyZlsrZaUsT4kb6cXLySodyRHoa9XbwEOBHwioiM3aQEmWGTG
	 d+KzA7BXXzK2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50098C4332F
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 04:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166572005332.9047.4959172383552734728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fa337e7d723563116315d65cfdd85bb0f68b663d26a8eae72cd0d7f01ffff77
Date: Fri, 14 Oct 2022 04:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665720053

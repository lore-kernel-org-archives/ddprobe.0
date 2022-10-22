Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4D9533DF
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 13:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DE8DC433D6
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 13:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666443653;
	bh=HUQavaj+GKrOnRKfqTMfzO7yeZR1VCx6adJ/fa4tq4U=;
	h=To:Subject:From:Date:From;
	b=o6Erorv0okeptKk7M18FRENIyIhqQ+uzgU44nn7anxF9KGj2Dj6aiWJLgoY64NsS+
	 CNjRP3hswk8Qj3JV9kzYWYAA+EkDqA75uyQEB/crwoyPgwMrz1owASJyPyXqZ/9CNv
	 AW7//nMhhY/fv20hAWl8KYKWVUoCzZOeXgHKvkegOY83GbhvAHNMUkdGlePBytIPs9
	 9CIzd0aVLzZIq8DGMSrlMPLSPT8f44JcreAdG9/q5DtZlZH0EyOnNJzUDUtJkMkXiM
	 GAq78lqRVz2QlwL0QvmoXSCnO/c+K7afaH2jI76wZ7GoTpm+fESzJRw6rdKO+6ugY7
	 l/aDEVnz38dZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6542FC433FE
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 13:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166644365340.9819.17325191447803757706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f0f9355f5dd61189afe0814591c0d48c3df4c3744ce8b15e9ca765a54e742ab
Date: Sat, 22 Oct 2022 13:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666443653

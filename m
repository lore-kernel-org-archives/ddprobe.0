Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC57164A
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 05:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AA79C433C1
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 05:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668923454;
	bh=lmzTC94XRH+qTNwUrx/zVbneocLyHmRRuuI/7qdg6Xs=;
	h=To:Subject:From:Date:From;
	b=u0aHhpKE/ngP1XqqQHln5ZFrp1aW9nfd1z3geQLpdZU2bwmICY7PWIOfJ8oiV5aQh
	 tyWkBnP4Pm/h1n8xh4MR3b0QSYetwRvYjT5N+UXHUKHfTLp1if9bNCm+pQw5g4rT8d
	 5hjuUp+OlOhEQQVZm1T7ejcRrqqZ/ZxYjpu5AhPrgAOVAoHTN0HHwPv4tk8ymRwxaa
	 wu8toX9UDthMYazeQ+wonnUpMoWIxuWs14Sz/0eaRMv2vQIIBOAXPgg4QPltld5sUJ
	 mzl75UWbzyF8Lf6Cmc8+uNajs38mJtULul+qsnFpgJ+N1JSDsMLHctd/G9bk3L36kU
	 cdSxLUTP0CohQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56430C4332F
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 05:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166892345433.24885.1266068355023377694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa41fd44221246b845d40bc868699e83063cf057fa1d635421fed1db01056c87
Date: Sun, 20 Nov 2022 05:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668923454

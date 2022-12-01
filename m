Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0A73A20
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 19:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8310FC433D6
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 19:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669924254;
	bh=s9raet+s9ir8m3ZSM9xic5ZT4HP0FkfML8RXXGwXRDw=;
	h=To:Subject:From:Date:From;
	b=LEU7zDtkWlTopQwIM2Puf7nL/HGTl17jKrLMtEAe1c8SiXL4Az/TpRqGOKN7NHRer
	 aIJnVza/09fX4CTtt/h/4BJN0j/JeT+vvsFP5pyEgl8xqa4nqjJQ2XY9mTY/+iwn0i
	 UniJr9hYApLCp6VQMB/UK0FVLPvgk9reqOjdtOmjSC13OXKXpgQVYQW+J0WwNteiYd
	 +OuH+ZfwIr2sfsfQsYAw5agCpERvzBb6/odlKTnu4A3YB7CbqUKDLgIBw7HPSyt/1/
	 m9tmEa45BOEpkPudYCpBNydCpr+kjn96Iry2g2jddoOcigJ8xDidbH8HVweOW4PnR0
	 HYaIuKa/jCCzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 553DBC43217
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 19:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166992425434.15243.3436120703979869018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d60127ba03c6abdb755fb3660c0863f0c96c7aa65196ba859be01b663d53bca
Date: Thu, 01 Dec 2022 19:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669924254

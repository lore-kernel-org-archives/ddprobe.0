Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37CA020EE
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 23:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC759C433EF
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 23:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684454285;
	bh=tT1GitR3U3mNNz8DxKlP3t4mh/SjfokMwYOs/ldfR/g=;
	h=To:Subject:From:Date:From;
	b=dpObOI53MlRWUvCmbxXG6CgdT/dP1MeKXrlRyRtwhfqfFGA+JOTVyQ8DhowKd66mH
	 02OXCPNHJGc1AOH81Dob8lQ7mGraP6B/GWsflxsX706sEV0Kvp/dEfERRkc0dRAFpd
	 BDsmeTNtgXheSyMRHAhdCy1ZUjMYaR4rOR1CpBxMZNE4VDw3cKK3r7eVVF9gVGBv3B
	 pQM+BCzu4uIb1EDmIJxQ3BltDfm7Whbf1VbdP/IrbqBCxNK9KUJOEeQ8iKV/fGHp90
	 bnsisylZnItv97iriFokKfcSbe/bghvjELMKzK6msRjptqz3KQhi0WP146op++M5Wq
	 yAxosIdjGte6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFA44C77B73
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 23:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168445428574.3948.6175722199788455911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60b26f6e2f73b3f4a8e2dd6cbc663e520f5755d647c1074667a2f88c2f2903a7
Date: Thu, 18 May 2023 23:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684454285

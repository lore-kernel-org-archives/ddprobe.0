Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCFE62CA6
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 16:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7544DC433D6
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 16:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668874254;
	bh=vA9q9J/wYSU7XCPu0x6wgsR65HlDvruYgh2riWLIS9c=;
	h=To:Subject:From:Date:From;
	b=Fr5bYzVP9N4AFJsXaHkAptAjdAMaw3daRYa6GTci+Hx26lMmnJ2r7i3sWPXXl7//k
	 dSWqsCvUXzpwj/UC78A5gTV6yCjVnaId+dlrw0TX3S8D9lwE3o/t9n3f/5mnR7q0X/
	 W7oigybkF/6Tm9pjMIQ5lWTZNnQTqCFeVcF/5I8MNGOeAkGJt9+e6Vp+XY7vZjY5FY
	 G2QsxcTqbzD50NLTU9C49XjmzP0cef3abPS/uWXaSfRl1FtvSOepNVQnwLeV5HyTei
	 bN9kN7Z9fBhCreojuia+WBsgTJEYwmt6qZkQZXXpJjYxrrcxwG1J2xGlZvmfvWe5VQ
	 LdokgsHGiZqAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A8BAC433FE
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 16:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166887425436.11969.16094867944057036523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7c5fefb823d6e817fbd95c0aee5234a2288fecde6c0da50ffe97cd80fd4c657
Date: Sat, 19 Nov 2022 16:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668874254

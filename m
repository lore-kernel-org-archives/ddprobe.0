Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAB6D4C64
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 20:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 786C2C433B5
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 20:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664308853;
	bh=bArmNoX8sLTj+GEgkAxcJUC2tnNQb3qUGNTL11bcrbY=;
	h=To:Subject:From:Date:From;
	b=G5PjYj7x7idAJdMl2mpm3GkjJZ2y9GKKf6fEunsBn2HUDsoPpW77sUeMsLSHG4SiK
	 KpolXSZ2ybyI5JkP0u8l+pf72qRqa/n7hny9lDwlgFSq2woGQEfPj0NnJFkU54jAhz
	 +yV7wbMnGKqNTG1y8EEXL1xOIStFaukoSu/Z63egJV1KFbVXPdv9LObW4mzKeYr5oK
	 EYqkqkILReT3GVo6zhjcRRZRi6eF7+ukD+kbZMrmjMeYBqByOjRxfsog2Kp2wSX27S
	 ubaPwaYhqdrYVeXOFFVPse1/ggatQlrzioREFAaMQMBfQjYFx42h2/q++8cqw7ch6i
	 A2iZvMMw5SRmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AB72C54EE9
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 20:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166430885336.7453.18361660717733767400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e2aa82bedbc5435907440d477b5184985a63592419f832ee32610de0470eed9
Date: Tue, 27 Sep 2022 20:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664308853

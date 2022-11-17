Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBC1EEB0F
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 05:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D84DC433C1
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 05:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668664254;
	bh=iQ5VaCHxrLMDwKnu18swUrVKRRWTaUzD0+Hr+JKgEDU=;
	h=To:Subject:From:Date:From;
	b=LcyYrsO8TInC12b2ihw1J/ynqhWDoqToy/sxJCvD5ne4ORL/Y0zfjk0NCP9uLfxB1
	 ucUfx8q8ZePBPpEYY7Qsqxet8VVTHgwW1KGhzXZxwTTThWnL+sugzOIHqLxw0Ut+o6
	 bA/Sh8aaKGBg/DuBaTYa9qYNzhRLN14cY3N/Qu8QPU75BIER6y3eFqCU0QWpiWU0rO
	 8puZdTZkan1UotVLWGkCUH/SgGEbA8RwiwL9JAWiCFTFwx1vY9V8XL6ksatGU3jvDP
	 OUMJBfH9HSVxT7ZEdDnEvd1zo3bYcL3eLx6mpKRXAVNJSCREZWrp36bnjL45yCz+IR
	 xj+uhBA/tVxcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5669BC4332F
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 05:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166866425434.7434.8937954076149920297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02949efd3ebfb05a587957bbef27f26c3f8abd23ffbbdcec9ebe1d6247f8a9da
Date: Thu, 17 Nov 2022 05:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668664254

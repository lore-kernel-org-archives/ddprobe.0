Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF66D1363
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 14:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86FACC433EF
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 14:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670769087;
	bh=I4nXkkKEAt9RQqehYnsKbDIfHbzkd3pwd2/2CXd3bLo=;
	h=To:Subject:From:Date:From;
	b=TKG37jkB3n2nHfWdnULWLJ18+L15A6vrGyiQu2z8F5bQ6mqq3C+Q3GGlMpLkYqB8N
	 SfQZxPsqeGiwJnoIlJDpDWu3m4WRBCNFEOBcEKlkkMlXZQM6dgagVZRUkOiyh8vmDH
	 npi9AS1p9tKUflhoMIQyifTMCfaX7Ar3+SJCDLGZkGQ+Oty1sRYUbyB+uZ+z/ZMIA7
	 7+lt5LTT96qi04RC3RdshZlA+aT5wP0evV+zMXarCoqej+i9gt+yRkHA5lK3nq+fFZ
	 KbbTnpNIsnd6UNxPFHhtPyE31eyW6K8UyaNPaj6xrrt2PN4vAjcYS/oZss+/ozy+7x
	 WW//vA+AtK9pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67231C4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 14:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167076908739.8727.919011854683904337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c555292d1ad696ce45e2501ddab117708bb92b7f4d36039e227627039d6dfb5
Date: Sun, 11 Dec 2022 14:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670769087

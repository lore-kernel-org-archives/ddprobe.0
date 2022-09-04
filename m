Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5B792F23
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 13:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70551C433D6
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 13:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662299453;
	bh=CkCnOunqIyeCkKWhFNKr/mqbLjgZ7R9NMf9rb7uR5qc=;
	h=To:Subject:From:Date:From;
	b=t0BBXVhy1eWjyWeTysDS/egTOLB+s19ollVEBQZwAatSEqXDp8otNtjy0Zn4cCKDL
	 /sRosNz+B5oTMICJLgQ7aa9o6y6p9nHjf8E1OcpWYP50s0AV3NzrmLsAijq3Fn5vSA
	 Riz6KA+41b/u2qAB0ceFPLFpoafptR4dswtk0hK6r+a6C5bXfP6iF6bqYvSsWVWL4u
	 l+7UUS3gpE61xxLG4cQflCWRV6N0OUEndbswQFi8H8sVko0g/qjotGnFf1hajSySLU
	 tSnTmw52wx+5Jf6U3oiidGjQVbYlBhywh/Jt6klTrhygcix20zGAA3igi62JiwRlQT
	 QmxfIKaV34xRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5294FECAAD4
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 13:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166229945333.3953.5635725226463766067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2812d3dcb054db7f79ceb634ec4a4334f69786356dc000e1173ce4658d3589c
Date: Sun, 04 Sep 2022 13:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662299453

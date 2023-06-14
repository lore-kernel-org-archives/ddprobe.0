Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47D967F
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 02:07:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C733CC433C8
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 02:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686708428;
	bh=0VEgFC8e5P11/R2PqUSRD1mbR+SLJnV2W1c3m9Pc31g=;
	h=To:Subject:From:Date:From;
	b=cFKk+OTqWhLsdoaFsWOQnh8+2FhK1RqS4kxShChljsl7fw19TFVOb5NSCW6U41UXv
	 Bys1SIfRhhfPCNKdei5kuByt4gZXJxUVrYF5Y1bJQqPSB1lWAeMCS/ljW0/tEFqqww
	 baYvdXYVfBfpWmdAymnd3SRte38iSltcd7e8wlI/AlaJP9B90050Dl/QfNkNjgsMgF
	 BHF6q09d0uvhO3Pj1rTl03cjBn7/KOORE0JE9s7X1Q7vF6O4tWAbwMic77PwU4ymBE
	 BgtuzYmvVIkzyr+HMTkZPYd3whcA2YK6xnPyYkntqNMacsf08qNn04qbJBREvxVcth
	 8QiMY5JlXOVcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD38BEB64D7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 02:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168670842869.14530.8517992233243292621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9ea8c4baade28894183a33f25cc725aedbb8ff4a71b36fb9ac0450f9e05bcdd
Date: Wed, 14 Jun 2023 02:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686708428

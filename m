Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A4C210EA
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 23:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB46BC433C8
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 23:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691279588;
	bh=/Pg2E3mpw8AcFzmCwIwd419H/cu/7GmEW41HpG94Nq8=;
	h=To:Subject:From:Date:From;
	b=HbR7djevoa8TKPyY81tJ/W+TzmygZ7CqoBK7DKszIBggGEvJOgFnPgnyTYRw7AWnt
	 jEkt9AlGbCwI7BSXMcs0wcvAYwnlQMAw9n9JEj3buwrJvFPdGHZW25emxvxzDdMocA
	 d9GvOjulnp8OKYKNvuuwBzqDcOgOqhHI5Bi4CS5Ap2DHjVVqDjF9yKWDRxTVkZq0pX
	 1+fOtdHLQEtO9IvASWVFXv46VHGAK0WLBSa71wKG9oIMzDH4IY/PLnq4aqRu/tYVLI
	 p+HyQMnIRI/7KCaDuCfP/Dh1kz44mINKzFO4nWA6yHlDb4ziGvHNGTBifEZ7+W6tVE
	 mCfXQIvE0C/og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB77C001DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 23:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169127958869.19217.9390374549312020256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 975b67e4ff236ed8e4061dd5167686f4f1079c29393197e37ba59765efdfe7ec
Date: Sat, 05 Aug 2023 23:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691279588

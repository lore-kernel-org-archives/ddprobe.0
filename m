Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C496A7B
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 06:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79189C433C1
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 06:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666505453;
	bh=RREds1ONSCBWFYYpDmyLrB5JLIiRgIZ3zeOOy0D7kV4=;
	h=To:Subject:From:Date:From;
	b=nJ+y3vFhLeijO4MQ+4MABY0h1K+l2FS0tBtrAYRM9v7OwLDOlbNbRIJiQB02PTWXP
	 HQekjdh6jkrZyfesnVHfRkmzo4PldRUD3MO01LWbvkf2c4jDZU2K0CwBCF0zOXovXr
	 5BogPhAf/u0LfrlIowFzSIRMzm9AAtsLqS9fqQUBYxtuxUfDmQJb6b0TFFyaJ8jtUK
	 qFwDnpwXHKcEAm0x3x//gHMWVL6yjr24E2VwzNXuJsygeudGDWiPoz+Mk1nxZHrxlB
	 XmrLYpruVYcwIR05h41ALMU+/H+pPWou5pp5K195n2we+b/ac5BX3wOZmejU7VZvlJ
	 oGAV8QeLP01SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D75EECAAA1
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 06:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166650545334.5616.2295937418689120100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cd011c6e6bc39147eb95bc8e99351be2b064a3f7310de4fd80c9b761acc7dea
Date: Sun, 23 Oct 2022 06:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666505453

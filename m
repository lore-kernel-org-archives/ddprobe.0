Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6609630F9D
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 21:14:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8839C433C8
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 21:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694207648;
	bh=oNKsRJ+xqxiul8ueC15OxuxxT16/L6dMlpxcN5fDyqE=;
	h=To:Subject:From:Date:From;
	b=JeO1b6xj9QWOALGljlTNKM3jXQJiNv33O4GAUx4IGtIDa1zkcv54aWJZ3wZjHrG6e
	 luznp4b0KJNeEYY1BztFxzVc9DviuJ62oL4rx1jwP1K2yNh8tV+t46sW4tr14tc4dS
	 z5SwBGNQ/46fg2wx3/9XHTbgKNLhvPCBQ2rWD0FkRiHTCTjGZTnFZWynIUL+Kl3CoS
	 Po6ofzSpkhpDktZjnRNLGX4zEnwikxFI3W0wtCzSXZ+au5w4IIfvCyakEeFe+Fdoc7
	 OrQlYclP3xtgsLUEdWWQ6tnt5E5Ui0JOjOxO/ntMN1HQEReDiOX5CuUQuPCX03vufg
	 MBb5Lyckczf2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB3FEEB56E
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 21:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169420764871.28982.8139294387045225114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4238edc608b4954eb40fe6c2a1c33de481bc11a01c370cc398276deb275f3063
Date: Fri, 08 Sep 2023 21:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694207648

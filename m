Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 605CE3D71
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 15:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D363CC433C0
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 15:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687705388;
	bh=Gerf+gt9HDymc+dJbh7MYOD/yEdRZTry1PyzGxKwe8Q=;
	h=To:Subject:From:Date:From;
	b=uWXHXDnU7Iok3LXnI72Gezyo1g5IKAIJ1y8eL+ooXFR4luos+aZNXZKAHnR7N4274
	 oJnNuONCUcr1HUIyuZs/DAuq6Q9UmYjsO8SjQcgUH//Dz3CzvrU445zLIYoxHG29Ie
	 o2J5GYn2bF96WcYGW19c3+fRTpd6+Amg7HKxn41REj0k7pPqgYMVefNMbyamyFmTwx
	 MhAtrigTsxT+aRP4CQfo/3QNtGv76fqqM+6z+yq4MI9iqSTKQEyprpl67F9H78sllN
	 3sUasXWLnm1kprddXLbiD+yqSUTXF5EvhsmOkjIriXg0MzSCH7UEjEJpKXB33Vh0Qk
	 bhIyJliHvxPsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0857C0015E
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 15:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168770538871.29198.12401340136256698999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e54df535acb0b98ac7f1e7c5d7e8f49218f77f1e334d45b81f35a64ecb662bca
Date: Sun, 25 Jun 2023 15:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687705388

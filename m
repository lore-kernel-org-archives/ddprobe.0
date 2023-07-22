Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41B9F79E4
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 03:32:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8945C433C8
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 03:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689996728;
	bh=mBsoB1av209kbZpkMZyPtOvPTSHTVvAzp6rzL1xrMcc=;
	h=To:Subject:From:Date:From;
	b=D6EzOP/TOnYsYmeufLUrGQ6AiKrLbFabpTLZEXXHSp511Vdw1Rp4Kgz7nuWo7WFjx
	 GSGd+Ose/dH/WP4JuTR26m/ALekpEEPKQXcukoVsdFTjG/ATFlEOxl2GIJjSWLiNA8
	 CTpJ3EtVfwj0AN7ebFNJW768KK4HswuX3lv9ceDHvessyfbsPp5SvZZLqax1uTdWp+
	 hqk5jDUgwRw515VYuQnh57caTWQkFccuJmaS4l3qu6YfugGRfjm6c2m3vaAoUIkiha
	 n2kWeHPmTqUml0Do6BscqksV4NOu+3DIC/eHwnKdMl0+zGWZvZE7iJKokGVdJHapj/
	 RW8didOZhLJwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABCCAEB64DA
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 03:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168999672869.6057.13215492584981676688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 433b88eea5e95b2184881452bb0c89fecbdd3aec9916fb8288d1172d3cb1b057
Date: Sat, 22 Jul 2023 03:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689996728

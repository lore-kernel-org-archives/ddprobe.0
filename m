Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41A5E23A5
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 09:25:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD413C433D2
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 09:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677144305;
	bh=lb7iAmPWUNPD7SzXHxYNwVxLtLgTqxzeJkn8VPpJwy0=;
	h=To:Subject:From:Date:From;
	b=SOk9XI87OH0NR2LH8Mw2oQvRGIILBpWb3hgOsbSPC0zsiKBzgDgkzvD1cMI4RyzuH
	 PkZS8YQ/cgsf7UkgV+sg0870qXC9Y6yrHz3SCKTVG9saX5XSk/Z5J71X+pggIIdVZR
	 E91YlJ6X3UmuhzlXby8QqXG8x1qLydAlmMa+ppXZLQfsY8FKuXclEDsrlTozdcnMmc
	 wKVhD+FwtxyEviLB1Sp+pjLAp70NaodfLbwfNZzvrwikRkEzVCWv2FK5gCZDLq2lHO
	 C5FKodbAFvQtroygfWg62Qz3iw4u1tqoD89ZuWiGeCfXTv+y7OledzX/2MQrVfofDG
	 V3xo0gjXRyjAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B46E4C636D7
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 09:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167714430573.25271.10852580859684780987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2e05aae4324f665c3212ac71a56744587afe7903775b07a0686361652157d03
Date: Thu, 23 Feb 2023 09:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677144305

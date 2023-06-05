Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70B2F160
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 00:29:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7EDBC433D2
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 00:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685924945;
	bh=+67+AiN9t8B7movipucJbIf1dqgFfMY3Y0CxvDY6UBU=;
	h=To:Subject:From:Date:From;
	b=uYgiX0zPwCpa63y6tQBKgSWl6xTPgoHpwf/m2T+1p/IYX2WlCECQgUOmlWA+M3XM2
	 0t2mX4dWLIaCTgT9NQb0qyNSClhSyw5xrWQqObARPGKbeykgZSlBSSXFnyENb0T+V8
	 3f032SvdSfTQ4PeXItteIu5r6Vl1rrj5DHEs+sbJWEx8c1iGzlxWbXFEnt8Mb0JPeD
	 sIvOHXEk5I1ngu1PQVrm/zEGaquwcnCtFkOJCQpOlEbnLnlhztDH+ZzulK9Swq7Zrv
	 OQHtSlLPp8EjOQ4OvCiDqses9nrRMK9VVh7nO35oxysUBtzk+WMpfCQdoXnQZVhBDS
	 yu6uF3hMsw2uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2C02C7EE29
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 00:29:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168592494576.8069.18201158902826916961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bae94b2958d91c29a3aa62ec0b36a873a49fae7d8975066eac0d8fac3ec2f91
Date: Mon, 05 Jun 2023 00:29:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685924945

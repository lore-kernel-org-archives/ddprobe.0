Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F334431
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 12:50:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4CC6C433EF
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 12:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678884605;
	bh=OkR2JZ+a9hJQr5pNJ15LzcEvxXkbNHBaJRUURR2kKCA=;
	h=To:Subject:From:Date:From;
	b=ZWO/JXU7AzFbQc4PQ00vNdmTQ7cDkaUpVKxd24uOfz+IzwWlYe54EQts90vY2Pl11
	 K4yS0VPbpg1At0RjEyMGPOhrYRuEHNMnVez7TasJly+Ieh6u7p6TpRF/sk3jRU7w/a
	 fiL6hu6Ghm7Hv7/zFOR06EQFnVD787lOJn7CfDjDSr+T1BtFyuyRAJLvnDjWONfWaX
	 PEnFBvv+ML+4K/8ZSfBiT3OpbCWmneYqsMhErJ8VD7gvz3QUIU1BJCOcWGQsAqvg3D
	 LTcqlNtJyHpzLf9AQMiyr220SPGE+RfczZTPxAvd3Iq8sOjhEWBBVh8lfRJkZ6hoQL
	 xrGQEb5Fqvb7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C37B4C61DA4
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 12:50:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167888460578.8457.18098360425120615758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e82edd3c2c01004717be443edd0d438209cf9ff88f010bcfa344e8342b713bdc
Date: Wed, 15 Mar 2023 12:50:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678884605

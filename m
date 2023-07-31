Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5373618000
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 11:42:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C34BAC433C8
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 11:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690803728;
	bh=Lsvmbl6Ww9Q+GKWolcwWzhfwQuTk3viM1pSILjoH628=;
	h=To:Subject:From:Date:From;
	b=W8FmqgfQ37d3o+QtvZWNMt0hckjHLEpGeQj5SqxMOdC5FmlRGK0CJBevBS1nK1Be8
	 qt2fMvX3WdbKVC2BC6mGYiyc9BAoNyanufgFEUwWaMU6lUbm4WIJlZz4ZjGB/5/+rN
	 /DN1//8jeYOdOmYHSnkzl9wtMTp7hlKKdqFf0DwL7vSDjPIpBz5a1y81oS/vr+vJr+
	 /5hsGJH+M4umLY4JPwCwL3k1tJXk39BNmh9YuOvLzMSby3+HOQ7OBxp54PG5V/9qFv
	 6XpMZ2K14DiJ+TMLIl4xcquFCIaeYQ/LiL8WsutgVM6W8GMb1eIfeLNYUa5FeJwCgx
	 V3hz99VOYrDMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6C61C001DE
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 11:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169080372867.9649.11492820156481173329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5acb540e33783706c25f0b70c7966587837e7d11512af45362aeccef162ac157
Date: Mon, 31 Jul 2023 11:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690803728

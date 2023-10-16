Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231D115ADD
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 09:07:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cgoh22Fl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5CC3C433C8
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 09:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697447228;
	bh=fhn3S7SuoTufohB2zmH/fpPoVjRGb1a8d/M1CCYFORs=;
	h=To:Subject:From:Date:From;
	b=cgoh22FlYhHdeenPd0R4YEG0FRpBHLGepsiHrrPnwQcuz30qBoJ5DJqc5eh/Q4OVD
	 rx21o3TXfuAALWvuBuGd1UFWJL07oBOym/U9XHPSqXzeGJib3MNx7yOUix9Yiauqcn
	 axA8V/kVa80FsgRX1o8Efsh539smdnfPu+TQQhQ+5/07MyV0OxoZurvv6WBS75trVq
	 AEmtWr4QJwvl68gv6+nuT0y+4yCZMm4IoKIoK81bKOjxyJUqmWlcksChR5+vlbZ+eQ
	 4GNSM6gRMPUFjri39E3ACh1rrc0kiwt12l2ulPuEAaDsxXdPztm11tZbIfLpDYkZRP
	 9kj7zyMe5giNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1D3CDB465
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 09:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169744722869.23985.10882370328926777490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25153bee93d7ffce676789eb1a37b24cc23775b6a0365413a8ef1ecb5128ce4a
Date: Mon, 16 Oct 2023 09:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697447228

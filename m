Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60850347A0
	for <ddprobe@lists.linux.dev>; Tue,  3 Oct 2023 15:16:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D334BC433C7
	for <ddprobe@lists.linux.dev>; Tue,  3 Oct 2023 15:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696346168;
	bh=zSuphcollkEwdfSrtZ2rzUDgl7BGbhLgz9UDp7ZANmo=;
	h=To:Subject:From:Date:From;
	b=SEs30fz6bpiFiDrU0Ac/UIiiYsnIv+9VZbawgRxDcZ0va7VZ03+DONdDYuaRwQyOa
	 1IP/sJOd26rJ/ps2nwoyQ4KeQ+1o8XDwutMiqQQa6Axatuk8+kwRlBecSBfIKzQiB6
	 AUxBLjZoqQXIWppC6nB+10Il02K5VRSDQTcouXzu10bIY9XCE5myr/zcEoZUL63Vfp
	 vK9AmWBLGfMd0RrthyoQhHxCUSkAvc4r+Z9yM1gWOxxiCpMNSPGj9GRUlvWNiqfMQy
	 zCwwaEqX9MQe+mVUHeaqBFRIgAipObqEZnbelwjX5k/L2mUPss5tyH2RRtYyIdbhom
	 vaEAoel5K8/rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B498EE7AD6E
	for <ddprobe@lists.linux.dev>; Tue,  3 Oct 2023 15:16:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169634616873.12873.3900547773192510709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e544cabb4d83b23871bc2178fe600f8f72986cae6df00f10ff3d4279ff57264
Date: Tue, 03 Oct 2023 15:16:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696346168

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 456DA7E
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 00:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3E8EC433EF
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 00:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682899685;
	bh=FX8ajREVvwVKUnmA/z2l3kzixHjilD/hRvrW7Jcyatw=;
	h=To:Subject:From:Date:From;
	b=dSidRevMQ6+hG6Efszp2a9DEjAlSXVo9tckt3jO0FPpAulJWoi4DizfKtcaNP36vu
	 u6F66ADhspZaSbWebWfPQkIgex5IWweGbLJQRMrux9Y0KJ9TqmkUl4Nm3iDXSv21xr
	 pK4a0BN7wqmxDErzqXJd9gPXPP9pyQydYR5rm/E89jPPMPJps1CBDLRcuc3eMRKsLG
	 N/qdAz/b41UO537xxTYFInBoEZKcKuy0lYmq84TQjbh5GvnAbSxA/HNvGlxtKPSWgy
	 geJJxVNqBQsD8auN6XUrKLhDS63DJIMOWLZLshSGHoiAEN61Kc2akpuZVGX3bLcgs2
	 X3KL6CWQzUN9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C61D3C77B60
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 00:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168289968579.20210.17808612943846302168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bdc6f824316efa44a49e5490881fa41e155e57436cb7e7c1fcd3e776d4021d6
Date: Mon, 01 May 2023 00:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682899685

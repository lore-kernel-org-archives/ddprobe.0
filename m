Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2549C8BFB
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 14:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hzuP7Ufy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A37DC433C7
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 14:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701527896;
	bh=9r5puVWqjt/HDGCt1YeoBV3WwyX/03wb7t1h42AP7tQ=;
	h=To:Subject:From:Date:From;
	b=hzuP7UfyoeT2ERxs+jPp99spfUk4Qp6a4R+r0iQPUr/8btOncNnJuJ3pollYQNHC5
	 hB6fufodeGqFfrW0aMPzrPFpnES3NIvEeSi+0g1yackjSLghTl71Y7qrf0GunHhNE5
	 G/10KVfY/jFEoDCld5Ly2MVGwaTxVXiDsCfIoUlMRfsokEHvqQvUmjrcXhMn5QXf07
	 cG04ROrzCqIwol0D6kHrCGc9aAoXsr1loyW6bMpK1Reh1569mhpYZEQFAa/EeV8BQR
	 qs0lGLWvfhk/8Tw/cr3UzN6Fn3c4gM/oT4NDTeLylkJXijeSX/qcG6t4btjiAlrEER
	 gBmQKjBeKDfSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C5C1C4167B
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 14:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170152789637.545.4054353383150511818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf2349556a0011af0b71cfb7526f9dd4bfd6dd7f2f60f3e75cd92e0f8eb4e8a0
Date: Sat, 02 Dec 2023 14:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701527896

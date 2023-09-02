Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 890CD19A
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 03:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C872CC433C8
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 03:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693624448;
	bh=eBiXitkm/2lzq9OFXS9uY3J3WvvEVIR4JBmIhyYWlEc=;
	h=To:Subject:From:Date:From;
	b=J1zTvlFxXeV5jwPjVt30QXPxD+PBiup9k6nWGswH0v+ZnTz6/TEMc49ztWrrwh5I+
	 ZUPRHKkVGSUyTc9ftF7xeACnyQw4WORuU6BWLs31nSicjlvggWqcWEhNoIwmB26gyT
	 iY036MsoeXKRkDNgsba9wGdULua1fEaxI1dY4NEgtG3JNmO0ektyKjvseG+WXkTiir
	 RnEw1nzkP0neR+rSn9dCJNfCunCEg5QRliIrmwoidiztsfPHgUrb3iBALVHEtM6YT2
	 W90QN7A/Oz3onHT7HliJ+e6FJcoIL094z+071qrDj6dCVsEiXd6qkhZNnOYXCbzC3m
	 wReg7dJfcVnwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB577CA0FE9
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 03:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169362444866.6840.2532492749588245328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dea40b551a307e32043f45c9677660133745bf3a60c1644ff43ed9418cbfede
Date: Sat, 02 Sep 2023 03:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693624448

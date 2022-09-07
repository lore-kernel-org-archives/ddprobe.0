Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3E195C91
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 14:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66F66C433C1
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 14:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662559853;
	bh=YQHLPEX3IJP40JqvvgwB3FpGQ/in0MV4EvT5KZQOU40=;
	h=To:Subject:From:Date:From;
	b=P6v6vdNufoLo26DbadPCE/KcFycCNkZAW70AZioMANw6KVExaY+JyzXZJ+d60yzMG
	 bZGYk/gSHsROhts1yiy6zGsvdnzC4jT8xvdqZ7Wkc/DS+3Wf0A2oxcK3aMQON3Q0lj
	 VbwhtvnG5sDxIRbs6AXypT8XIEqzJyiq2sXzFHxvqHi3nX25BSGffbkocWMpdok+XY
	 P3Jv/6R8ttVXXkkvNdl0bMmmCchFx0x3hl8QbnYEPEPD9xbK8QaxCIDp9e5SD/Vh39
	 GPz7yrM8MnFlBW38PwjFeFXoXXrEG6jMeToWMRyWIIfgxTM034Y6q4dadA4ZERo5w6
	 hTfk8YqZN5K+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FE94C54EE9
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 14:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166255985332.6913.12481032294837710739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c2e32922ce9c07b4ea4b4643125eaa7cb02220a339d74cda6c96b07e56ce5cb
Date: Wed, 07 Sep 2022 14:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662559853

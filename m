Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1E02399
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 00:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83813C433EF
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 00:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671495087;
	bh=WB5X0NzuQI4490P+iw6nsRCBJ7VRgw6mr1Aepp3I2Lk=;
	h=To:Subject:From:Date:From;
	b=Cxx0GRFMvHLQjsP3VoByj9LGO3DpvBAkuSSFFjz0kH5OMMpmVlwsWbXO1qfqnxk1g
	 dAAPZ6PTQii8nnTYg6ZYRItZCLGUnaqTW13JV+EemrcGPV4+RW3OT2H5/GsWrCFcPL
	 zezl2XKwu/3MKzpRNFFH6wk8Uc2qqbqX2TEB21TZ4f5KRugn3Z2EK8iQXGRId+WZab
	 o13csh/SjFhulHOfvEI/QILlcYrGzpPeJk2A+tWHunieixUimg3rukiC0zmF82tb19
	 jyawPY81T08Kgemvr4cnWlJgHRS8XNckMZlEHf1pi0RlsLpL7OtuViBmgBaq2Ii45A
	 VNyomqogh8P2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 689B7C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 00:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167149508742.9534.13557984998925226531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea40d678a6604e5e339fe1af7ec0159957b493860b3ac2f4efdc341c2e2b549c
Date: Tue, 20 Dec 2022 00:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671495087

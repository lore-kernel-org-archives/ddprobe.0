Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4175629
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 05:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 812DAC433C1
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 05:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670478654;
	bh=opC0WSP+Jsx49lsq2zigJ/SLySqdCEqHnSc3Omic6eQ=;
	h=To:Subject:From:Date:From;
	b=DwvsAUXS6DvrI9dW7MxIsvzJEF3AIU/IBnx7Ve0ZE3TECj9cv9wbI3+6rW1b+1Lry
	 WZGWaVNkFuHqeJKKpmnuMyjMddjHsEV/yVKHanLOqlCmQCVeCDpoqn0o878DZ43X41
	 ZR4M6tdZh97voSrbHnZZFtMQ1YR/TcpqPOwDcOczlCzjIKKZj9mIPuK2pf5bsdtmeU
	 KCcqmMwf+C0H93EV2X/CwXjXmB9e56LbUdZNZ0+hkBNCjzvK0G0Dsq8h+ovWCmheWQ
	 UdH+LJvDeDqIsbmt+lHktkwr+g3XwygptIiggtRXRxYeTqGnoi71Lzfsh4UgEvxLb7
	 a5NcXIVpLdOnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64999C4332F
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 05:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167047865439.16175.5200654966294270657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91c7bc0f75c271f0512d2c5bf3f03b3b8fef0a87c6151a444d822a33ae71d27e
Date: Thu, 08 Dec 2022 05:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670478654

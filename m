Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83D1B2581
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 11:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645442785;
	h=To:Subject:From:Message-Id:Date;
	bh=Rcs7qQUYtHT3VBJnAiAVPJ4F2U5Ai+QKN0FcS/GMqck=;
	b=hRyBntMZs9rAWimCWOJOsjdumADIzAgl/5cshUQGeEWNjoZWB6hg9w5D4ykuLyr7
	pSwFeTEx7IS+iOCOqdc2AqBncAG3tBf5EDhUeIktp5cQD4hMm/F7ZsjCZS9G5M+nftE
	tgNKgcphhf38HcsA3mTxRiMoeTn0Neg4WVy3HAXQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645442785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Rcs7qQUYtHT3VBJnAiAVPJ4F2U5Ai+QKN0FcS/GMqck=;
	b=eUfRLUPfkOL0KxSlJVY4A1W14lGIrNB5wedP9oFe5/yuj52/6KTF6aEU6IRZcbHx
	4ehU4ebFxcvmbdJq79I70RqIF1hmW/j5ZtpnPXRIGITXtMU75qT6H62UqPQqGPtlXrO
	vaJr7vP/g1ICEpyvyCl1RKk7r1WKe/LBzi/x6OL0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1c085df6-84c2d7d9-8bb0-49f9-9c2d-9404ab7e642c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 487e36c6daabf9d788673afce122fe51be67dc884e7a3316d49e2bf64d30a405
Date: Mon, 21 Feb 2022 11:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645442784

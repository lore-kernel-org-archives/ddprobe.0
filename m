Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8601310E3
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 22:27:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF3C4C433C7
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 22:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688855228;
	bh=hlAvxUce5+4hUPCmhiMcWJ/NBdt3Hu7kZyKDVAsob7E=;
	h=To:Subject:From:Date:From;
	b=ikJDPWUKuPSnJZDE025O8pO9Kj0Ul9zhyFEKL2YAVtpxngC0xhsnkMHQTrAiS1+eW
	 rGMf2sijtc9lzWc+SkUbnIv+5YwoRwvWOavDOoeVH3wok8I201TIDUXvhHHHMqECju
	 9bpJcJoyZviBUkocz2xEW5+ah+RWc2EkSJx94Oy/OInlYvGi33HeNRdNMhbfMm++BR
	 8AejozbpauShHd2p+GAwyd4Q2NKYkWB5Iomkr/UwzZk6V/xMIWMtKCQW6/ydbWbw9G
	 umHch0AzmLDZCJlt4QCVdGdOovC6NJvbjeVzoGfQVBHyLjZPFlTE41sh+17hADHTBM
	 MbVubHwmDDIVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABADBEB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 22:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168885522868.5999.8468967368329432461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07922bae5254147bcf301440141abbe6e53eb18e420cf46ed13679ce73cdb4c3
Date: Sat, 08 Jul 2023 22:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688855228

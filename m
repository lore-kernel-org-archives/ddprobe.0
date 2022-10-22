Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2FB04427
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 23:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76DEFC433C1
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 23:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666482653;
	bh=eLH8yNpGB0D29kUN9ZNHQXK8680nlu274JR1RTDy3os=;
	h=To:Subject:From:Date:From;
	b=hr7rS/Shf4r0hX4zH5MZ5TnBDWVbzbiIAPNvkeQpLuZxcdIOisYWhG4qiHgeJua3j
	 iZXxnEpH60bAbQ/+P+22EcRHhKJ9nB9RMba4m3mwYLPEeoGiNHA0dxOf+/5W+FgFrB
	 7i/55SyK+HNUTEfRfpxBYjnhKTJ78dzOEGDhQEB0K+VI7ROWgbxM4y7BPRrmb4lfRd
	 rEQvcGKkW+XGA+BMPrG9qaDtnErIvTbLPrwS6RwQGGD/16bc5A2ljswSu/bIe52kBh
	 +ml6HHWBwF5lvOonMcyDVmunUqgRh/96sohrGzkOCgv7BBv2NfWOcU2vXxr2s/NIdy
	 20XgerruGU1qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A13BC433FE
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 23:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166648265333.7027.10414057866699351638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 844e5024322d109002e0336dfd22be794137608720cb901dd995934f627d75fd
Date: Sat, 22 Oct 2022 23:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666482653

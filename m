Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 650BC7B
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 11:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645961184;
	h=To:Subject:From:Message-Id:Date;
	bh=ONdrTNpewj8AGIBsfOBxO/Emw4Veydt+1OZZ2Znpduo=;
	b=KKhQqtRvlk+6J3mi7de6nw326od7SsF+joF5pyZIHfT2/KjvFTlj6eoSOACAziuQ
	DIHwQI/uNMLlIpZ3fQlHz+GTjbLSllJFceykpfy/Z8K8kkum2aH7UDrOgXAe1PiuEnX
	0m7bmtMv+L6qMYBjr578p8h+ahrFdHfu2IxI6zME=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645961184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ONdrTNpewj8AGIBsfOBxO/Emw4Veydt+1OZZ2Znpduo=;
	b=KacT54JbrXYVxCqmaHi2jCqg5RWmcZ6nQr6hE19uESoeeqg2F1ZjPf8f4C6tvNY9
	FYVj7afpfTi/2FxLFgrX/owlZFeEhAQl2Fs7P/BsupExt7FZDeF19rUGysZdy7LM6tk
	wGGTlUws5y7bDcpCO4YCe0fxfnykqP7yGZeJitR4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3aee85f0-6239155d-d245-4233-87bb-23f74b002fbd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 52efeda1f1a48a1ace02634652f0e1d6ca10fec3b450ade3c7df1166ec8c5313
Date: Sun, 27 Feb 2022 11:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645961184

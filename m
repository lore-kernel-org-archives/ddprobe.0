Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86BEB3674
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 12:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646655385;
	h=To:Subject:From:Message-Id:Date;
	bh=9ZrbZ5FqFOog12CWUD0IZmng/XMNLItWuuAvYFIywi8=;
	b=UePOZqvSJ6V2WVviEbVZK1Ctp8KWFXB8SdKITa23LjHcGPhYorcMm57wPLe3zdS/
	g/1LExRv4LVU+yrDe5n0DBriVLcKrACQTEQeeANHJYVLmBH43s0VpbdonJ/KUcXSkku
	E1a80FMqXzjPywrEwW1IiYJ0jNq6SmaqHHcNnLgs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646655385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9ZrbZ5FqFOog12CWUD0IZmng/XMNLItWuuAvYFIywi8=;
	b=DWcYpQK3CPA8k/9smSLDEhyi4zgPtK8zxie+eGFlVdfPi1aMJj3963lUOjog1QxT
	86Qr2k49kxGQOOaiyhr8Xc+tbCFzxbzcYbAxvyBsjN3bw5iLXwIoS/hvAxVBJq1DUAU
	18G0/jtiG7/JuBFvECCiAi2mvXRkcBGWWJuCiWMM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f644f2cfa-ebd83c16-6eaf-4891-b5b5-0e074f8f3941-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5696557c302eb35fd5e6c1cbbea4fe831263a25ee59ef39b9e9edfa0a8509145
Date: Mon, 7 Mar 2022 12:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646655384

Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4563928E5
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 23:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645139784;
	h=To:Subject:From:Message-Id:Date;
	bh=oQAx89afzyyBm1WD+A+1D52kDEhaXqDHjKl+4XEz4dA=;
	b=USnDmv/x6jf+XrL6gOir7Z8qurZo2stXJL9bHhb8sMVgoTLWi2R0L4+3gnEaJh4z
	wcjWTpuNerOmvc6Ie0Rxj31E/MLFfA5yeXMOrlAtdkwh4JXMp22sdYPbB/O2zNFPeBG
	YrrzhGNk6i9zsqwjnbbfJyCRkW5+yfaZ9/LV/5ok=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645139784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oQAx89afzyyBm1WD+A+1D52kDEhaXqDHjKl+4XEz4dA=;
	b=kAOveu9hCwHIomFcTemC94KMitxQGtmHnZzIUz6aVPaJ5SjNpL1crVLqjJOYWba8
	bV4d/r1wT3XoEHfRiTI4AxndCSP2Q7pMFw4bPRaKEptoeQa5M5epgYNfPq8Popeh9Di
	p1o3Umdk1uQlIm2lALSbwcKUoOgsbriLGc+p46Ro=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f09f8f42f-63c2131e-5813-4e00-b2e4-9cc9ce4a22f1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b762b74699d2467d20e1acdcc38e4d9fd2f2837fc2961a1d14b7d0b5985fd6c8
Date: Thu, 17 Feb 2022 23:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645139784

Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F06DE10EB
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 12:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645793185;
	h=To:Subject:From:Message-Id:Date;
	bh=XVLuumcbbCPWRAfLZZz5uIzRcXobHnTv6CLkOpPh71I=;
	b=Z6tmXDKRbte477oTxcCLinqHxtUxEgaD6MHy4Ffz6CbEPV6mfivSxRzTetJEQSB5
	UUTwCriNmh4xxjebC1zb8qdSogGe8rUwHcWjKLJOuC7mI84nr9hb+grpL6u3d2E1ngt
	7Ky5S2olQxusunwfAiSV2LhuVwiLd8601RqvwimM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645793185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XVLuumcbbCPWRAfLZZz5uIzRcXobHnTv6CLkOpPh71I=;
	b=OIBaYMnBUhb8mzvCmgaymBQZdRDyqQa19/DuRTTVeMNVSIgXTTAuCU1LS//HH2+D
	6rLdVp7JxV8AW7uOheu27Uyayy968W/2OnSm8Cu7t8LoxVkJ0CuVHReW0TTzyVs1QLT
	0dQ+TDD8dL+y/wWguuh35Xk7+/ydoQcZRne5jaOg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f30eb0bfe-791f2b16-a00e-4441-91f2-fbd8ea4e0494-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e0f956d3cb17b9b233b17fcce1201ef2c7e7a686ab727221270e8e46c83ab521
Date: Fri, 25 Feb 2022 12:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645793184

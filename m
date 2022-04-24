Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56C877A
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 18:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650823438;
	h=To:Subject:From:Message-Id:Date;
	bh=VShzwcK+duz65ie9qk/tDSl8G/aKVP1Pa4r5lPnxRS8=;
	b=ap03Q5tWsIV3i51SSGxYKdi5XHoOQVsneU2/8o+cL/Irb3BoNm+Zo0uJyzart90w
	Yj+1qsOXqGxZwnuin8TssnvC4yNuCUWiajn98xkdI9MXUNfSr+BA/Q1BUHoebqpnnfI
	c7bBTCW8Q06EprcxiXb4Mth4f2vfZF4vOq/QQ4X0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650823438;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VShzwcK+duz65ie9qk/tDSl8G/aKVP1Pa4r5lPnxRS8=;
	b=hjOjQtZxQv6qbkw3HClXRMUsTc5c0WrnwxJv+dTcs52LqKv7PkyhpSDlZd95BiTp
	bJgnGorfHlkX1MtAPnLk+PZjKBYEoqlyLPioDVNpvRNGEIlLxq1gAVJpMEK5BpeM12p
	wg4fLo+sq9Z6c9DIU1jja0uk0OCEGB+7Z4gr2x28=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805cbe9ffa-94f05d5a-36d3-439a-9904-72500adffbfd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 49cacf363b4495481694e6172bd7eb22cb131cb5479fa0925735c2bb264e1c5e
Date: Sun, 24 Apr 2022 18:03:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650823438

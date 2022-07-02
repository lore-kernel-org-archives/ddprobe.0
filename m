Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 995ED3C1D
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 17:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656782213;
	h=To:Subject:From:Message-Id:Date;
	bh=GfepyDgN6bINvBsT0nhSECU5Am46meFYkkEbWw8q8L0=;
	b=gEMnwH+kC9uvUgNtKr6bIum5MwuwjpbQoS7WNGAceeCH2ws/U+0iqMURq+PfsBbO
	OQ8IhZH/74YU0D09hOdxAfWGJFn6yzsNsmU73UL+WufPS1SdO7iSCfWQ76tDpeRidDK
	4P/tUPPJri+J9j1ba3W04bBs5nIoNtgqMefPGHpU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656782213;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GfepyDgN6bINvBsT0nhSECU5Am46meFYkkEbWw8q8L0=;
	b=ee5Rsao1SflWnwX2CPJOWYWVF+HHjEyTEBhxXFXfA4Ah3AJYvlBvn+IvKhth3bij
	4Z6JSQf/KP2I9lHSSFQNEnjSSe6pQivTorTt9khA5vXxbe0zT64dSAQ+Wu3YnTN4GGz
	iKr7JCiMn2Iz1ywyjDpi3TL2WJHhKhyBb9mPW+ag=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bfea4cee-52ebb131-2f1a-4876-b315-ad68d096c6e9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c583306c9f84d8672a88cde57abd6f7825d929a01d6a9cebb413971d5caed968
Date: Sat, 2 Jul 2022 17:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656782212

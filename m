Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18AE92F36
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 22:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657405012;
	h=To:Subject:From:Message-Id:Date;
	bh=of8WUZw/klKwGXKHqRcFMWThEXeQoZhmPl3msEMfGws=;
	b=IBPfCHinGh6kJIShJYd/Vclgqc0T++ySZ+A8Ip1mroRzKqz2cWUfmAZwL5UA3AR2
	y2D++HYXuQm8A6b3ubjL3ESoEKbEY+Tn3/5bStfVuzUhtnnAGP6U9NY5pJawvOwIjoU
	Dx9z7QDEcXuKEKfC1E/juoDMup8dnjZg2g5ODYTY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657405012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=of8WUZw/klKwGXKHqRcFMWThEXeQoZhmPl3msEMfGws=;
	b=VAMsqJFILIkuDWlV2jHYgVX3YUP3YXAVzorQOVgOaoqRbDQoQE98mSi6ikQkX99s
	wHj5+pUnLvUhZyof9Hn26Fc5P+N6/29T0YmpDEgVNOUNJxEBPFhstju+xrJEThUcAt3
	3ky79y4ahlOGj5jbV8qJe1CDfymx6RJO6woF7Ujw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e50979c3-f4ffe54d-040f-47e3-8cb6-65020ba91180-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 83355f575678ebec7694c9eb77904999c7779f77982ada7eaaa507397e0a17b6
Date: Sat, 9 Jul 2022 22:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657405012

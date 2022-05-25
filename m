Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B90C1392
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 20:38:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653511079;
	h=To:Subject:From:Message-Id:Date;
	bh=RJtcpcoN7Or1jhIeIB9TG2Qelw4b19h2AU8ST4QwF5s=;
	b=NexpftQ+oRHgm92WEa1IogNuIpTQ4xeLzyxfjJ10361VLZJFdYekRWfs0V7by4v7
	ea13bH8wXdw8+horpsoUCNL9Z66sdKlZt8VEFNK28utQGZiqdFJ2FR/dqKYIANxcb7J
	WIrojbcJ6tfV4rzdzZaKwODeA5VUB0xQmei8xakA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653511079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RJtcpcoN7Or1jhIeIB9TG2Qelw4b19h2AU8ST4QwF5s=;
	b=Bb0v9X9IcR0ydxN6Aarfc8P/oPyWNJw2LxPFxT60PthT9JKV5LXvgzuMw6RhpAcu
	YM/cWVQOuVGSkOMTNocQhqEqRF1QjM3E/k/Wjn5Y69HDJGWr+4yNkKN5jOOCYu+KwEL
	6dfFpR3rDGhbFNR6zxHQy09q19XhbSLh0TYW2KTM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fcf0c5b8-ab419b14-36e4-4477-a120-1601e25b5ce9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 93ebd56d366db106b7d6499d3439ad108124f1315e51c53b3226c7323f421910
Date: Wed, 25 May 2022 20:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653511079

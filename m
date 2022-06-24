Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF004A05
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 23:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656115012;
	h=To:Subject:From:Message-Id:Date;
	bh=FXBTX2QkTLGk1i60hvgdqQv9HzWS4rrDrgKMq2B2FZ4=;
	b=is10nPo+6klJ7FNiu12VqY8WO0Pb+5J03tLVcQIIgTrGrgikBpx0BGZ8eZkPEz9J
	emQSlbVF8U90hmlY+ZHlvMAY9eJ/i1byFpEBE1I/CiuyP9dMcOGuLC8bB5sd1oPB7rN
	YmkZJX89HykmnkgJiRaVP7LrK3iK1IuXA1BallFA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656115012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FXBTX2QkTLGk1i60hvgdqQv9HzWS4rrDrgKMq2B2FZ4=;
	b=XHd2uhlIhBy5sv+bEXwAX5/aGe01KzHYmQdxD7RSF7Tfx4ZP2Sx+q8/fEmjrxRAL
	aON/ZUAK3vvYOfKL3gfAOHu9E00CMTLecsF6QdOMBrQH0nj7FcHjYQJVVpLpACj3e1o
	1MwtUdenwKxn4p7sADbu6L8Xu8hjgmm8FAA1I6n8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819825a2e3-1ab053e3-13ea-463c-b442-4810f2a8d4ff-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2b16b8a71b7551a83e45097d9f95827f02fb7422591435cd761b0eeffefb6589
Date: Fri, 24 Jun 2022 23:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656115012

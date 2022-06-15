Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4603E7A
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 16:19:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655309939;
	h=To:Subject:From:Message-Id:Date;
	bh=4opuEIIBTIhnwfzKLp5Lg5HfKEsTQ/bgVzH97sxHVjE=;
	b=KhJtYMA6smkD2BRExkA5Ngz9S/7B9WSPO20rt4Bl8EuB++0aGRRkPD96YFIzSrv9
	uT8aM4pS7LHqa5yinfYwyVbTPC4GPKauNKsh2D1ma6NMONK5XyOvvu2qfcZjBFCB0Of
	aXBDUbcBte65YQ1EDmyw0r9pbLMYsPFQ+4QaNZAc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655309939;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4opuEIIBTIhnwfzKLp5Lg5HfKEsTQ/bgVzH97sxHVjE=;
	b=BfoobnYuxY8qRuac9Rx/CRXkGagRyPHPuJRxYuj61AIJJqPOh/4pAJpjlK6BqNUX
	qVy5CeaBLtAJ/K+E5/vR9Utj2W/nH7M5evL6mG5SePnfe/pR11WtCXM1nNY4gk3dTrD
	olixNe+xk572l1Srn01DOUufIMIuSZdYe40Awsf0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018168293244-fc0b9a66-e04a-4385-b928-0d973771bc36-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2853df5363b9009a387164e190d89941a2d6add4b76101d4b8a9256e75562b7e
Date: Wed, 15 Jun 2022 16:18:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655309939

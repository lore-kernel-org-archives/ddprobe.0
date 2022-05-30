Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FA4718D
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 16:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653927239;
	h=To:Subject:From:Message-Id:Date;
	bh=FRX3PZxpmICZiieVcajvZZg8KdnWLehPmnwQovCI78Y=;
	b=UAQSWWWOaQqqebhcy1/zhMKK2Rh7FkKSxBgw+a1mTZKwXmT8w7SfKW46ZkXaJDCl
	N6+0c+Kl2yaqyEAabIipmrqpLJ3R9pa4Z44vYh4l8XMK/ODDOhyvYQqx9IzTCe52OIA
	Dz9vCJ3NOMNjQtD6ou+WdjyeSTeeXDf1wGvJ9EVg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653927239;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FRX3PZxpmICZiieVcajvZZg8KdnWLehPmnwQovCI78Y=;
	b=FEXslcy9cDb9PlPOkbBBa1vnh67UtHmIfOeHUykePzoZXP3gbwBCpcdHOCB3+yvX
	t+OmHRDFF/j/5lXs5gPRmGo6tvlb4PhAjrEXHxGocOLvLYj9qXMcXrC0vcbPLoJwPSK
	6BHmGPu86O8ll5BNQ4Wc+ylDMBQ+jjJP/mExiuZ4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018115bede73-ee5cfcae-5213-41b1-acd7-b0ef3c8be0d2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a8d1d5d16a0fd87d7f639b07cfdcdeb0ffad84d6903412c610f7305b5adb6ed0
Date: Mon, 30 May 2022 16:13:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653927239

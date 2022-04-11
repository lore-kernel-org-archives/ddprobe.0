Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0D1610ED
	for <ddprobe@lists.linux.dev>; Mon, 11 Apr 2022 06:23:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649658238;
	h=To:Subject:From:Message-Id:Date;
	bh=EJuRNjR+vKd4flsKZ2z7fKDGbe4XT0WAd8db+sNaQKg=;
	b=j5XYiehCAcfID73soVMBuyuLhTcHeM3gOq+9wE4+kBr4gt+kI5tzfZFG8PRtjXNx
	9te1M4ca8eH0Dl+Oa/RRitfxOhVXLGMy/Hg6Y7+ON8O9kVcNlyt3At5zaq8xGKXVXDK
	hac1IIFv9U2P7ggYGVFWVhRO94IZ5Rqe3REynDik=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649658238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EJuRNjR+vKd4flsKZ2z7fKDGbe4XT0WAd8db+sNaQKg=;
	b=AWUOMM0DrtVaU2VD2ehtzt/JQPszWh3p9wQ0GyJqMDC3h2IgPMv5rCZuB7uffV7f
	GDa2ImgSK4SP4n5crzfGZF8WSSCVOnA2uhqoVjwXrJrBttJoCnFylM/rOt2vz86aNhb
	tHuC36+xFZK/ilDnW7M47Vzse+D7qwn3/kvct6J8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180174b1555-40aa69b1-d902-481e-89dd-717f23ba7b28-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8aabfe5e18adc2a3893525464be022dd13465f5899ef877b14cb1082af528f15
Date: Mon, 11 Apr 2022 06:23:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.11-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649658238

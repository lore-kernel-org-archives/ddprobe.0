Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18118371
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 07:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658735812;
	h=To:Subject:From:Message-Id:Date;
	bh=C7CF+cKvC+reB7a3VrxCr+KnHxrzm6dT5UVsMSsBI7c=;
	b=NFDLRx+1T+BY8k85JyY7pEnwR/hzFkk/Obf11Wwf2m4h+tpOFu1ntA7kLxfdf9C9
	TpaKj5ix7iGq9R5TO56uK9ZRLVagmQYEAhcLvwFnM8atMEsZTouAWBLd8wli2XwdmOW
	dP60gm9DAmLLsdx8wXc6Tf1ShB0ywfURoP0TZUjw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658735812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=C7CF+cKvC+reB7a3VrxCr+KnHxrzm6dT5UVsMSsBI7c=;
	b=KYKy5M+i92Ks+maPsmgdgBKXnD9tq2P9eM+BkC1FZ0fxyyyj5JbOEmGV1qdz9IBU
	tr362CNfF1r/TRfjFB+9EadJZo5o7UnUsq137aUnpTHK4Opsderpjl1tvRERXAVmsFI
	NZtuZc5ugbt5htH+eqGctFtBKAGbyKpafssY88Ss=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182345bdeed-7ad626e4-f0f5-4f7b-8dc4-c0db6e3ece66-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9eaef95e0dff49088d03218bf5b6e83a994aefbba90078beb65692aeb8c8e060
Date: Mon, 25 Jul 2022 07:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658735812

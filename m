Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 115CC625
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 09:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657187812;
	h=To:Subject:From:Message-Id:Date;
	bh=kb2HvQONg4rfGdU3LImlPYDjSlNdLMmCmvrOoR72SnU=;
	b=cdaWmKaXwh3uCtqqQIvqiJhf3JZJt1tmBrXXlBtaUz9G5djGd0ic8OzJTDm5WLXT
	qHJ1eCyTPq5+7lBiSDQEWRp9j2PBaVetJUvrThq+9FqnutxNZBE1rYcjVteWXjnUJM/
	+Xlnt4HYf+Cxu9FZVcdLvzAkgebULm10w+CRYb7Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657187812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kb2HvQONg4rfGdU3LImlPYDjSlNdLMmCmvrOoR72SnU=;
	b=Q6NHCqLomLU0zWZHNfnth/h1IG3cAme2wV32EmzmG5yozON71j0RZ4MwN56CJJcN
	BSBt1Ji1Lf8IX57o+kwNgCRN0m+qji22m252ROg+Tm1PA6AjjsZ61HgwpZb2IMjNpWg
	9oGmVPH9hFHCQivXVBuzs+uCGJKINZmfD6WkJi10=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d81743f7-b8ac08f7-44b0-44d3-94da-cecd600b76cc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0bc468de9bce65ce894ad6f7dc884e2d7fa4b43716d0121a547482abc8b2142b
Date: Thu, 7 Jul 2022 09:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657187812

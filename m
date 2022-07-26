Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE3E7E0
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 07:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658821612;
	h=To:Subject:From:Message-Id:Date;
	bh=KQ4r8+qUbazwMfxzTFT/Y9A1zIqT7riTC26Iam6Kmhw=;
	b=ef3ve62fyZW9dbc9cQdBSbDFBMROAwaBuF3RewE8TGxVXKNZC+Lfro+CEZgKpvo7
	3tOaSqpL1dF1NkhyYYEclsmNnFdIeOn183DIB9/OP/aCQb+40Q1R7jyKnoYxxCcN+Ky
	eKNjxdFlr7Kdl2wFWN5KNzjJfeLCI4EmUxNC861U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658821612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KQ4r8+qUbazwMfxzTFT/Y9A1zIqT7riTC26Iam6Kmhw=;
	b=B5BkKunx7NbM08LmoSoO2uKELuaTruhGs/upGEX1WrF6LQyT+yZBe7Syy2JgkiwW
	gw3qU9p7g78+yJSTPaFwzNVBL6G5Pz7fv0iAQfiHiMwjeE/w/LbpM3DDZvyWZY7qU9I
	mdMr4FqPbmH6dY4h0DNJ//qUwZ3ZFB6Fh5DFNU9c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018239791313-52fe5e6a-bee7-4799-b8d2-aa8b1a58521d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bcf8c1bbdd1254b39f5f1b6819bfe8071bd2dfb2da233d98941d7534b11d0c45
Date: Tue, 26 Jul 2022 07:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658821612

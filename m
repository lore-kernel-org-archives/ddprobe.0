Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44899368
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 06:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659509452;
	h=To:Subject:From:Message-Id:Date;
	bh=0h7xYl/eT6/Dqfyy97hii5GYUsKn3Cy+PPOBoCcBei4=;
	b=ab2thFzzwxX+zN53K/bNhlFO2diUSlG6YU/nZG9JaYD5Im0XFv0914nCFK9+8K2f
	NT/9xZN1wSvJfX+Vfp3rdb/NvpOy4b9AoOuRwfNmuE1TUfQfvAeTbtyZBt8WRZtFo/+
	NfRVYJSybDV1wh0QeJ/mJzHz0xq5YVwhCK2D3xcQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659509452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0h7xYl/eT6/Dqfyy97hii5GYUsKn3Cy+PPOBoCcBei4=;
	b=BVx1M0UTYPm0l4DuTI+/E+4ZdfQksXixxD5rf2v8RzKrDoq2uw1HNPzOLRBo0JYt
	1TtTiowr/tfiZ3G4UBntLN846zBxibHSl50O/T7tCdglz4n0In4ibnnhyEZjZx14g8L
	/IkcNA/NhId3t6Jz9uPt2tdQZI1l7gz7+DWstdMI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826278af56-c80cd54a-c59f-4398-9a6a-c5c14d01daaf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d534636466ba94e62935850712f63f5bbd080fb11b496cd11c9c4e45c5297b6f
Date: Wed, 3 Aug 2022 06:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659509452

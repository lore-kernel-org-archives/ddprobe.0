Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C0D92F3D
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 16:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656260212;
	h=To:Subject:From:Message-Id:Date;
	bh=7rtSM34K69jfOTv7mXR68u0qT534VTeyE5Admrt59yM=;
	b=j8teziKgx0OlDvcdwAMIs1dhD//BB82CRavnyEkfZ6hdUqq3yJb2thB0bh6pl5Ba
	IrZjTM9RnI2aN6CPtxDcaQH/yLuWs20zKSgCl+3O9j8gflbmVs4vl6lGdld2n10EqI0
	cHQuBMb1zzjoK2mFokCoqnszo/Od8c5pnepV50E0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656260212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7rtSM34K69jfOTv7mXR68u0qT534VTeyE5Admrt59yM=;
	b=JbYfWzz4On/iRVS7uETKCC+gCdQ9TVk6j34ohwVTQNVqNe7W6Ji//jB13jzRg6t+
	ZCk3s3bv5EEtH3oUZ7y9xUmJlpZKAvq9S24cJKwdatASU6Yy1/KR80IUEDG1SpBfu7t
	zgv9W4XBx72o3Ys1j5d5vxGDO44F67C4InKWw88g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a0cd3639-691b1480-bf59-48ec-852f-08952a90b684-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9224defb09a2bc55ff8f2df53ae3db42c9689229ddd793e8f10c98ef81104afc
Date: Sun, 26 Jun 2022 16:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656260212

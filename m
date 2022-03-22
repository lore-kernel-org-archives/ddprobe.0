Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2570E802
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 06:21:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647930087;
	h=To:Subject:From:Message-Id:Date;
	bh=GyJt0cszEOv+oh13INJBW7d/+OhZydn6PoMQHHm98ic=;
	b=hFFgA9xLF5A4bE3Cng64+ghVRXbRnxXPJw6yR/RSsNd/JMc3KStEDMRFXYl0h8oq
	fqWxuskuZNHfVA0xDSeJ9kRMiu+h9B3vSakos/L9POxKCB2RZH4nuhaLQD999UDXFmY
	RX01exSRQUVk+QVryMdQ5mHsbtuaEhAMvacvrwGs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647930087;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GyJt0cszEOv+oh13INJBW7d/+OhZydn6PoMQHHm98ic=;
	b=eLzTvxSjPT426pmmMQlAPTp8ZN+wTNfeBJv7P+4Q+bKe7ro0jjc1lhDV4lTbcQHF
	kBdWeVhP1ph8ic6dM4g3yP3h3/9L30bLa7hG7iMn8hwJNHNOWMrg/NtUn8H/TRVVQUs
	Kh6jpb5b6IFkkmhUowcLCTC1smdk9Vk/1kBWUSEc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb0498d9a-407395da-7a65-460f-8ee9-c64c4808006a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7ee479a2993c870419a662f08f12646271bd3b26fea09859b53958da1c403ae3
Date: Tue, 22 Mar 2022 06:21:27 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647930084

Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78B671FA1
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 09:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647337284;
	h=To:Subject:From:Message-Id:Date;
	bh=BClDT+LX0x2hqe1qyQc4NVlG5PQkfh6kanLFD/Dy3oI=;
	b=V0ryUR0TxDskWG/tCKrgiyjSC8CXjipNXcqxnK3dhzRO06HL6+1RSKmHxZQDVXRH
	B3xvltHFuGMsaLvs2umDV/G3m0omIbAceu+HSKc6xXjQsQ/LQYCRgrh1xU7VKmpcyyY
	x+0jZxZg1ToPIm2LBbxYZzE4bQNff59z5pO9e8Z0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647337284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BClDT+LX0x2hqe1qyQc4NVlG5PQkfh6kanLFD/Dy3oI=;
	b=IIFEMyDLIP3atGonqCVKMTQfKq5BQ7gU3WY+bYb78/bUoMhK5CTUS73Si09QDLbK
	FmJZ5iKoGWPs1TL85dJTMCMqqP7g3u9hzOuBQ1mHCFTnceUVJls3xo/e129dkdz+i2A
	UPHvwQJn+3xZrIQkAOt7VndbbmFOUtu8G+sltpUg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8cf424b7-951a81c3-8a78-4ca8-876a-9cc7af26986e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: db88764fe15f4ee01e8f753668921a70364624a17af1752f882ac1f5bba28f06
Date: Tue, 15 Mar 2022 09:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647337284

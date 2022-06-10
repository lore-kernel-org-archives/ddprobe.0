Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 235592595
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 17:36:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654882559;
	h=To:Subject:From:Message-Id:Date;
	bh=+b5ivmkN+yfmMxr0b1deGAepkfEvRgWcgiHZ0Ckzlu8=;
	b=CfTftMzLQ1cu+Nmy3Z2Ky+nvdMxVEEiw7AELHdze2JPEjltzSX92VAfD7gfZ5tes
	mPq1igxt1/cGlbDVYGYpF6XS9tbXTLzuqGY9Thp5SAIcnr2piZAuyuSiJXshTNPDTUk
	mpcwNrFCb7/E3qESAZldduZYnrXrfDYb8s7+1T6I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654882559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+b5ivmkN+yfmMxr0b1deGAepkfEvRgWcgiHZ0Ckzlu8=;
	b=HyaIQ2WkmcNd3nuZz6stwryNQNTsXQLgXIpOEdlv0Ryp/jExaq6W2dHYCrV0uoi1
	fHfPTjyyhyZmMUxRN1W23BZsHjFGvTG864asO62uB/e75qb4HA6uViTmdBHRMWKi/0h
	eongwhVuy9381BIj835iEeVUqD6ZtbotMBZRPfJ4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814eafe56c-8ca7e3d3-1554-4853-b06d-e6505fb62ab9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c374255540f336a95de3c36bc23763400a3faaddd606fdbc3a04b29647197991
Date: Fri, 10 Jun 2022 17:35:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654882559

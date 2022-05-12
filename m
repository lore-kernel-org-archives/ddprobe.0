Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4924733C2
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 15:03:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652367779;
	h=To:Subject:From:Message-Id:Date;
	bh=lRmf7uGvJ89WlnZkPJ/K7gHIzfTVIVn4gY3DInepK8E=;
	b=hNtLxxd3+Te4AUyETJ9uqYBwGrDRSM4zJEWtOH+hH0l4FtmzBEEu+TbLXfWuVoa1
	H+vcRbe7sm3wVINdDzHbfjQKuN68T7CB2OdGgEj9lzZOsjQ8pIaeqFW3SakosOf0AWp
	/VcoT/MfNFD0NAGf686B99QvB4eXXKBlv7t5nP+U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652367779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lRmf7uGvJ89WlnZkPJ/K7gHIzfTVIVn4gY3DInepK8E=;
	b=jDPGKVTy0Yx3vhrjd4iyfeNHwqsF2D8RyEfAklqRKN1On8RfVYaw66L8UkTlUu3z
	uZXNNTeyq1RPBkMamkQdP1M7hR2xSqAQXx6BBcZPkYkxVMrRNKU6Fg9lbrcRCHVPBm4
	TYlbKCRPKvGAOzpkuPX9XOW8E/xgB2VPXktTFrZ4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b8cb660c-cf33d0e8-b4e7-4edb-832d-9e732fcb9206-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c93cf6d94cfa3b028f19dd5d3ffae30e73cefd03b54ddfa56310090c11de8b19
Date: Thu, 12 May 2022 15:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652367779

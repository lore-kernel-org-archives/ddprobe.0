Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 588E3A3F
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 06:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660457452;
	h=To:Subject:From:Message-Id:Date;
	bh=r85W+F68Sk4yxXWua+RGB6kxUs1jv1g3kzQB1IKwLYk=;
	b=S7hkIpHnADTyCsh14IQ1zhWzFCTWqiCAy9fV3HDPVX2MfRBdmLSUStX0XYoNUkKp
	FP0wQY89VdBzaG9YnC1yGDSBUz9GasqvRPnjwoEsBe48O7K/SVpcheS15VC84R/Ml4V
	0TX/mOqYPMoHF8h/Wt4yUYPQ7Q06fs/EtS+x3mx8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660457452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=r85W+F68Sk4yxXWua+RGB6kxUs1jv1g3kzQB1IKwLYk=;
	b=OAU+Vx/+oBnSHQyY4brlJvXbcuQeqPSWDt2WEEjC4m9ecHLjTaq82HboXUEg5o7s
	B2COij8Qqw+cBbu0taF105tSe+Kj1jzXoU3DRF+wGI944Z6HeB99i+01zGzUMjKcXlU
	v5Thl16cXD0BdPFBmBch3klfhswn561aIUpOQc2s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829afa043d-380114af-30be-4d94-9013-6b9c294cee8c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4a2be83ac4cdcd28d097ea066a88a23ae67b2c7c7ed71d4aee65133efe2be130
Date: Sun, 14 Aug 2022 06:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660457452

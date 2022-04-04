Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DEDB7A
	for <ddprobe@lists.linux.dev>; Mon,  4 Apr 2022 00:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649031718;
	h=To:Subject:From:Message-Id:Date;
	bh=agoMegxj7UH0pIywk2pn3Je2g84Hy4j6hKc/jJlv5AI=;
	b=ceWTH9jjbFWBV2qmsPYow+aTt5xLC0HUsERv/AE7hMXLza91c9Lke0RPtSinylSJ
	3Pj+IAJ/+OVuJFH9fp/EoYur1FjTVcfDiKyTJm+mZL5TFdl7esEGV4wDwUX0my67CfG
	a3PV+u6h9vujrWGd9hk2sCj4rsGviALlvHLLNM/8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649031718;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=agoMegxj7UH0pIywk2pn3Je2g84Hy4j6hKc/jJlv5AI=;
	b=U2sDNAW3lyQYo+EVFwapc4U5yVYi3Pe7Hd/q1GE2iz8ebbu77aDTKvNhalRbuxiB
	OjaRTCwBdp9tJ91qpu3MvnttqwpOGuyvr0kKy3UnK9oQiC480XUVNeGqkA/H5dGbuPV
	JEJRFguzLPsVzyVkI1TuqDLZ6acuGMH6eGgzGUrM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff1f325a3-98d5ea01-fb95-45cc-a19b-41627175237b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 491ced60e29b90be0412102c3bedf9539756e13b4148ca337db7cca592254ebf
Date: Mon, 4 Apr 2022 00:21:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.04-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649031718

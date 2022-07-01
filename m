Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A071855
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 09:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656666412;
	h=To:Subject:From:Message-Id:Date;
	bh=kfLf6b+RDINObREboC1hPEacDoDZhFrfeqeb732eklE=;
	b=TTC8/In/xdR3G1P34lWFVSkSPyDa36iaDaNQWUyO9QXfi39hjfO/hoV9A7AQ9mem
	XVi0Jg+e3lA14T7S4sexxBntcNtsw+ah/YOOr9Zmj3LAtem713LRgIL8r7xNbf5IVPg
	qtw8Yc65mXXPyVUj0zGQOVnGIlfnpeGG3hw3ahUQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656666412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kfLf6b+RDINObREboC1hPEacDoDZhFrfeqeb732eklE=;
	b=Uyz9vCgHXLKp5R1ZU0+NRzBjmmGn1TpA7ll5jr5oPsRCcV0D9I20eCneXSXU97Kj
	82PAqW2L02QKpDA82GaTecFxSnk8O8AdCFq7WK4K18vMUJuIT/zSLXfNXQseT0AVvWH
	jVLZ7Uo1lOaXDNoQFXZvuyIhs8HkMOdy4eYzv6aI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b903553e-fd61d112-1f5f-4743-afce-185aca6d5d41-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ea7f1ac074a250f7567925b62a65b751dbe83ff3d00ba74a38a7cfb5e0cd27a6
Date: Fri, 1 Jul 2022 09:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656666412

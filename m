Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A47C7F
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 02:20:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652840399;
	h=To:Subject:From:Message-Id:Date;
	bh=XwiHhdI1wQET9BvnjbF2osZVehI7DXgunoxVmQUi3h4=;
	b=A6TIrg421D7wIyW6wBBrhICRYhvZkr66vFV1RpnYMxP4O6faPzH69k1vdlfjflCP
	wT504+02ElFPNZOY4z8gI4JW3bfuF5RtGHGC2k+vkAJLoHfXkZ7kEJz1+U/O3+VrxBB
	ak4I10vXshgU119bDeKFx+Y7gYzcBrXrkWumzdPc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652840399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XwiHhdI1wQET9BvnjbF2osZVehI7DXgunoxVmQUi3h4=;
	b=ALxcIHvrVbGCku8dlFrIeH/7B8bRS/i5MvuTOR0suaxB68NFOcFyYBbwtMZAoTmu
	UWgvFRFiPqa0umA1y5OfQbbn9EdsTcpMKxDf1xeCI3lAyjU7erq6fDrn9NDuBfU6HYS
	pwgwJQpKGAl3dNup4LddB2KvVWGLAT19hFtl5/HM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d4f701e8-bbc53011-b53d-493a-a4ca-db17fb8dd309-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0ff6fbd6c5ea3670b9517798338e1b02c0d7861884b80f1c3a71bf6a1be20cd7
Date: Wed, 18 May 2022 02:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652840399

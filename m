Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66F3523AF
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 17:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660411852;
	h=To:Subject:From:Message-Id:Date;
	bh=SkYOqdplQ+EOL8zIplq4Tmza1KgwZDiH5LcMG7PzkGs=;
	b=OHH0EFo1dYKDP2GTo7cJE9WcyE2yyB+TsNyYt9EYBlt+VsnhiAu7wqVCmDyUli3k
	prEzEK2bl8lOwYLvTqvADRbnTD56UHXy+JO8aPaoc54oxx1r7zbQZb2fQEAu0eTMRBU
	ZvjBkIaUIeDIvnaf+vgeS79C1gUjbWmxSZ/CeB+g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660411852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SkYOqdplQ+EOL8zIplq4Tmza1KgwZDiH5LcMG7PzkGs=;
	b=fhHJdF/oXSeLJLJgSzj2bawtEINbushn3cN8qC5PV6g5uHMstBXSdKlCnFf3TAwe
	ePE+W6caCG+kbi/nlyV+Y1XZyGt92mnz6WljpLOY2DPU2YUx6DVCOn2eNWcb/0Vb92w
	f7qth/zWOwqhgyLKojYUFpApzEvkGXaTn1w8gIFg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018298423722-44486ee3-ff3e-4dd1-b755-1cfd4568d5e8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b56c2298390f60a182f78371ad04d12c4756dd8f9272a85c1795ba886d04fe09
Date: Sat, 13 Aug 2022 17:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660411852

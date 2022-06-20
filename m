Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242113237
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 23:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655767199;
	h=To:Subject:From:Message-Id:Date;
	bh=MLpSKQcjfc7JH3iiGAK5HRNu24wdtl6NyAjsr2DXuSk=;
	b=RqYygoGxie/XMp45LaQeXQPA0hltp7AWAzWcy9/yS5gzGoLwBbdU31JYrpXKDblq
	fji5wBCxdJzCBUx7y23QaR9wLgB2LQllTTDZ0biKAXd1/RtZ0gxdxGkR2MpzUmp3hUc
	CIpfgbfYF6zQ06G+D7pjtu2OBafBGnib/EaTMskA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655767199;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MLpSKQcjfc7JH3iiGAK5HRNu24wdtl6NyAjsr2DXuSk=;
	b=kdgtI8gvaznhY4a3OIrrYRBqWAwT4meJKuon1R6/4fJGvqc9u28ou9rECHmOfYgN
	2PnQzL5hsMWKU0yt2HXcRGKtt1zuAESdPqd1CHJ2urKgakHe2ngkvoi4sfS8b62pY11
	b83gjNelC4+kooTeqBhvLKcdVmlLZjNyzasDRbKE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181836a6e18-d01b8f12-bbdf-4674-b148-7bf1cf8dba4a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a827d7f0b5056083a85cfee8a743cd492be2536103681b33e4772c477ab01ac1
Date: Mon, 20 Jun 2022 23:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655767199

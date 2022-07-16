Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 196A91FA4
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 21:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658007412;
	h=To:Subject:From:Message-Id:Date;
	bh=ORl+YvUn/CxKACqNE4/GwaUBs8c9kQr/6vBH8TzmiYc=;
	b=SMzbuJSeeM8ZsI5xmo0p2oQgZmB+EEhomLvIbiSwEysiO4GVs2JwKE3EuhBlS1kb
	cns2KubkI1+0n1FYKpZ1cXR1VSuTq7kcxb4ulnWjhaicgK2kR5LOkH5Kd9s2uC2TlP1
	pf8ZPT+y8e3jxhfj3G8Pr7mjwP4WzjtX3IJIsm04=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658007412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ORl+YvUn/CxKACqNE4/GwaUBs8c9kQr/6vBH8TzmiYc=;
	b=UveNdkNUslrVR8xweDqOACoNzhvcpNEEbBvb9fipysvHqg1rnTpDnXoNU8qeXwJJ
	5iRtk4+d/VNdd9d0QcuIS1VfO7t201/RFwqi8gU7VpIZH7j4ZMsYr+3zZnI2WlW86UL
	x5uk7rbJqPYtD+iO7Sk6J1usLBiFvvX6FgtX3jn8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018208f15e83-62bc518c-5ff4-43b8-ba5c-8e8f861b6dbf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 05c4a6d36826c6865e5cdf4ce8bfacf40acc4a492c8eee78a79bbe966a0913d3
Date: Sat, 16 Jul 2022 21:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658007412

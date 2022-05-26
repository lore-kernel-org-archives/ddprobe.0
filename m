Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 075111368
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 09:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653558599;
	h=To:Subject:From:Message-Id:Date;
	bh=LtSvnN4Luno+TKBCdC6/ZeIG22y7mJ4RZK8VHVWpQt4=;
	b=A3oWkVvUHB3oiwaa3NxlqlhvypWkBLAfodBOtqfeAyLwJ4XvSGyvwRmBdnr3zq4i
	eJfxk5o5eaKdt+qVg8Zs5Wb9wXtOVwDNV0eFwjyrUSGGGNO4yhYgj3KHWBZOSPsJG/b
	I+J3Q9GyPoCYAMl/yj/2B7ACyqVjqqQSGnxP+/SE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653558599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LtSvnN4Luno+TKBCdC6/ZeIG22y7mJ4RZK8VHVWpQt4=;
	b=ixZdLPbEaWPPgf7JTC1NNUyt5d4KRwUkL7U4g93QF7EFyNF9zP4zSxZ/mYgffTwm
	s2zrQ2oeaknfBVtFOPWjQB8KA5ErVuEC/ZRxBdhK63pfH2HugybqRgwjjx5l0ruh6lB
	ry27TdpssZVo6lzd38j2RfDn0uvjUjRHvIIGgxBc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ffc5de58-77d4bf52-e717-4fd3-a5cf-a1aaadba9818-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 85e9e676e52e251f5649b5e04aa0c1650cdc21e7443a11b0fd4ee7124573a484
Date: Thu, 26 May 2022 09:49:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653558599

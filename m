Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CD017E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 01:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658540812;
	h=To:Subject:From:Message-Id:Date;
	bh=Uk04eFJo/xO0mjaRbhqBA94fqfUt5tnqkoJSKYSQE3o=;
	b=GFcGjD+asPHysbn2J+AbkLJdcK2lJwWgyCjzdXdO0PbfmsiL4COoVw1nZOpUbZFW
	0LQHUDAESS6IFQXWrk0QAWOrTPOOJ0OjbnjpFYn+RkG8sPv6glD73RV/KtsGgKYzHNy
	ECvHcDsRqBQXv7ecpUeqjQxLzZ2eM0fvhlq3l0FU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658540812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Uk04eFJo/xO0mjaRbhqBA94fqfUt5tnqkoJSKYSQE3o=;
	b=hoKPnr+ooVbbriYw/EbxyvojdXOYjtR96DW5LBGEX7jC5ZHCFmzGPsdZU/34C5yy
	uODMTI22y/DI3hZnxyixj+uRnPnM1NGD8+v526rrIoz7MjvQ/yrenQD3/nB5Dn1xGwQ
	85ZitzCPEjV72KLS9obPbs785f2jxV8wfgEAyeOQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018228bc6814-e14f2d96-742a-48ee-a322-bcffb4a998ff-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 90d710afb85405afa64c78f6f4494e55e9546aa8a7b970b14cf1cdb3370daccf
Date: Sat, 23 Jul 2022 01:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658540812

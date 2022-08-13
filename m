Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D18E7E
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 15:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660402852;
	h=To:Subject:From:Message-Id:Date;
	bh=2FqZ98ULNaR5z3xkfKnnKHQMIHNXOTlqM2MRIgDI3TQ=;
	b=JyZg3frpjUjwMPvheHjsc1pVsnv6e0mr63mvW6xFGGoFBL/jnqMlHHEqJwHZyME7
	uKpASQ5QR3EuBaP9xA2/Ths9jqFb7NzRC+oyD4WN5R7sEcPq/ibO1QHJTKztYvqk5HK
	z2bBaSiMqb+yA2moonA8uuCckh52t+gPQa2m6mfc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660402852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2FqZ98ULNaR5z3xkfKnnKHQMIHNXOTlqM2MRIgDI3TQ=;
	b=G9tPTFUovapJJ9qGuhlEXLmMVdde8wq8gmLNTOkHkkCg9i6/vq3JftIo9lC2oXbU
	IKQkzJyerbDuXC0p2c2VT9LiL2FAgRkuOKQ3P9uPsYCYTucpB0UFR1HML4M9Ijq2cT2
	cQR+7lNGQ1QtlaSIvXDIhEdIty+GVDQdyTfw15Pg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018297b8e2ca-dce2e5d3-4877-499c-8adf-fb5ea45dd1ac-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c2e05b72871b33ab43e4af35f0c9129d494567001c7818f50fe932d0550b620e
Date: Sat, 13 Aug 2022 15:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660402852

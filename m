Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED8C2F36
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 22:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657405612;
	h=To:Subject:From:Message-Id:Date;
	bh=fwH/9Lx51wnrUY3jYtTKAZTuSzu7d3StL1PMEOqzP0I=;
	b=RG95cUDxVUa5jorJz2/U3pZELhbZD+sVGJAgtkMASwQvNa4d0v4K7rbyhIjTPF2o
	9MdqszXmvFXrY2bT5ZL1VaL4yEJrldFdrERZaXIOawG+jdH43HdcuP4L7/v3B4yuGgS
	eaJ6WMxk8kIATNSlmH0jF2VyBFZ0kmDWpRr9l73E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657405612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fwH/9Lx51wnrUY3jYtTKAZTuSzu7d3StL1PMEOqzP0I=;
	b=E66++BjOKXRE3e61ZZdi4rq6+mcvxJuDAFGTemd91v7szVabNhvEkjFlIXkKE2D9
	Ncbp5bMaZAZDmAogOzDdMKO/GWyBSHRpy3HWpasPEW1z+bOSfCyO+ZP0fYXgjOCMj/r
	4Ci77ylqNW2Z6ugtlr6Xco1x5GBB3UpPdsfcQkGA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e512a0df-d2bca415-f750-470a-8512-4491f4377991-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8c87ba4628f2ba0062ff91ba3838d3069915506291bd548f409cd5b1097100ea
Date: Sat, 9 Jul 2022 22:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657405612

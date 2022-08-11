Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5557B2CA7
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 07:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660204252;
	h=To:Subject:From:Message-Id:Date;
	bh=pj7PjEbiGK6gqRMMw0bBqhprrd0bhXxQaYgmCFG5nuQ=;
	b=D3q9lSY6A+/AehtssTMv7NzyA3vC0VH4cPew7bgvXcU21qyOEZlFsN+7E22vO7sJ
	z+qW1JOqCwfsHa5kTqaxL0UfPx+vDP+I7RXwtKMlv7pvnJGyzcV4YzplW+mwOuBSWb/
	ypIUaPXr6A4rwjOwrwO3HAGC2qSfpcPCNSptRBdg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660204252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pj7PjEbiGK6gqRMMw0bBqhprrd0bhXxQaYgmCFG5nuQ=;
	b=Qd7RoEJJKQA7vK7Yzgxhku0vHP69WpvnV9IWga6ToPQa/Fev7tCNl2NVPoaH2ZEr
	n8reEPh+yKtpcNJkyBJ3rqAquUJGwhvWgBsjk/L2m4tugbosI0xosA3WG9cn60WnVKg
	AjJ4tPrSBFrvTOY8nmd//+5vvKLlpj67deozGPrE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828be27da0-acb05c37-c5c3-4bcc-8de6-dbb5afd4aa84-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c968d52b32d47c73b15acc848e3585bffe950857e427cb4a891f3106772cc9a3
Date: Thu, 11 Aug 2022 07:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660204252

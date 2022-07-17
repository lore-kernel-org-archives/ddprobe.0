Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D6A36F
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 04:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658030812;
	h=To:Subject:From:Message-Id:Date;
	bh=qC8CnzUAUKOsDMKJ2jPVcfJbi3yABLVhI+U9B/rfgwI=;
	b=i1PRDYBrgrKQCJGFbzH22NWNfgHquZBtrd3rptggpG6S40tXmcrHZjmQu0hPOklN
	+Q1x/R1W3Q2d+aJ7ZzARVVuSJ7/R0hu/aYzf13qiKJW4t84pvAIWPWWdR7OlUfxFzfR
	Io9yWs6kUQhSaR73wbDnZePFdTXj8Y0trCjCfkg4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658030812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qC8CnzUAUKOsDMKJ2jPVcfJbi3yABLVhI+U9B/rfgwI=;
	b=T2+0GnGW4XGPsdYvXLDrlCaan1lEpwG0aZINODeoGggKGQkOKphDzhCID9uT5IyJ
	E175PLUxWWRWwCFEgaYXxZGk4bZ8PRy4wWcEZyjUY/e7XUHN0b+GQttt6YlSSOLeLUe
	995VoeIop+tGEbkd+Rbk9xFTAcKkv+73f93rskjY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820a566c80-b4fe49d8-263b-4c67-843f-5e1d62a804a4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a907d8238d557acd1e20070d9c53fc202c7a00e4a571f8293cac40d56c2582ec
Date: Sun, 17 Jul 2022 04:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658030812

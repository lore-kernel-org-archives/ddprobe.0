Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15F5B7E
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 00:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648081678;
	h=To:Subject:From:Message-Id:Date;
	bh=F6RYvGb00b+Zi8R9KfM/LnShScYWgAVF5DXWMkZleJo=;
	b=fm5oAl/Du8AsPWlYaktR0J03KbFAZrllJk7hVQqYANxGuE0XnoLaWBV4ayD9IUT0
	yoIq34xoIUlTJeFcg/fYx7/ag61Ff5/foRvLIQw81QTkch1g1LwxIW6WgtrEGCKIZAH
	IosX6MM900ZTC2LHekskm5skXS74+3eECVnoVuXI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648081678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=F6RYvGb00b+Zi8R9KfM/LnShScYWgAVF5DXWMkZleJo=;
	b=gOIFEbLk3Ql1u2wr8uYA9TLceo+D+WJFDpxO9oZNZjkINcCdOO9jSNlX4pKfEiHy
	XAjyrPtvE+w7uyMJFngJds+L5eFHaAngGBAWnTPCfKXUNipD3v+nFIhBm03n/PipFna
	c1z+YSr8GPku5tdnwj7+ncLnSeuNe1OaPSKoha1k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb952afb6-c0a46dca-1267-47eb-8d94-db0c276d8c4a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f858692ad07c0ea5f8a927b44c60a32abfd13c4cfe174343acce8a16ed06b524
Date: Thu, 24 Mar 2022 00:27:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648081678

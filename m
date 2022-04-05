Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0329415A7
	for <ddprobe@lists.linux.dev>; Tue,  5 Apr 2022 03:46:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649130418;
	h=To:Subject:From:Message-Id:Date;
	bh=nnPscXH8ywjZJGMQ1ZsK4VKEO2lWQUz4/KmOLhIAH3E=;
	b=LL3cR8DM4QtdxbgWOOikh6BrdHHG+IuRksRhtSgnfG4t+kE1GbiFaZDpdFGdd0u9
	IXoh6SR+2sMKLGobdJw22hSeR7eXy1yoUjn19TbnTXqrB2amsINYTOBbh15nUyZSKmI
	7QieZ8RXQ3WDXkE4hJ7EJ9WQJUTiVnfhcULa30kw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649130418;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nnPscXH8ywjZJGMQ1ZsK4VKEO2lWQUz4/KmOLhIAH3E=;
	b=Jlw+F3hhybcNEZAGOlWAbkZier9mv9j7Mwjcgz+EXssyjjGv3fDOLcmEshhtyiRe
	/WuaY+Ny1r2MPCunGXINE2+aXpzJsPPhf0tiaamT3L2bBrajuxec/uyADQ3pJSPePuW
	U1terUyqSoidBw4me4xBzCUwS6nh0ftd1y23FPjE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff7d53089-972f2ace-1be9-44f0-9e28-2e05c2835d7f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 70e09628b9729d876d9573988615c86d23627bf26a1cf62afcb4da71b19c594b
Date: Tue, 5 Apr 2022 03:46:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.05-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649130418

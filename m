Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E66B6130
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 22:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645396884;
	h=To:Subject:From:Message-Id:Date;
	bh=cjeiCDOOaPBYd7CWsbfC/1av2o/MTIHhklJUgGwIQJw=;
	b=M+UzILgUHuKq2ZQaLIgTgdh07nyZA8XDmk9HMxHqDsv838rXJl0St3Z3Fm/lvj9l
	MZp7s9TiOVnfiUp8ZX3/jJhaGCPx83+BhxuCQsXHpt9DgI1uWVokMRcPLwJkfkgbD0F
	5WJ6yfrY9XImW4B8vuCHcHSf1VL3ymhmThDQXv3Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645396884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cjeiCDOOaPBYd7CWsbfC/1av2o/MTIHhklJUgGwIQJw=;
	b=h/NXy73YKxXm5KVYWQNur/qhs9weLllRFKHiLhTi4keGTPIrVSodExd8vzgOIunh
	Oar/CRnv8VPFviFTyoFPgtfJYm0ZvcR4wPNm1e/gnm8axgj5XGoTo2SvtnARdlFhZUt
	aVT1jHrRUONc3GxCAxY7eKXT6PnsVVKRd+zxvUn8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f194bfd02-8da713dd-1737-4a46-906e-6f731183161c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 093aa36cae56a352b6c6c5cde728b177284a0ebc8130c66a1a354bbaa075f884
Date: Sun, 20 Feb 2022 22:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645396884

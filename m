Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B79487A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 05:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646889385;
	h=To:Subject:From:Message-Id:Date;
	bh=34WrE3UB/i+0S4BVwjr1I5H+XB4JsOAaMKWNH3o6uOA=;
	b=YlF8MLawvPn3I16uQpdkisZsPrpac2TjH+xIkbVeLzK2SHMrrBk2AEM1J7LDz4Wa
	elUm2eYeV44P/uE8Zgw/33DJw/gIgImiA6D5/ykQhHSSe4dSnw78uMI3R+VVlzJBGoP
	Y7nPJH6CYPzQU02lxnLF3JhrhDZCHafpZCtbv1NY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646889385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=34WrE3UB/i+0S4BVwjr1I5H+XB4JsOAaMKWNH3o6uOA=;
	b=VUYucNU5YWsm3awTKPSIiOebh16cmRv5c2PRfQ0XqXD+1C2EMAoEYz0bCXB5ys/D
	3aKuSnJJ8yG7cfJcQwh7kJmLsJsrEgJY8D1qaYnUQL6MK5LvVb+bKmJMkEgm2ZjzocS
	LmjE48nUUzAojoHv2OxPjWbAZ43sY9+YoeCJK4P4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7241bb22-cc72b5d5-0a8d-408e-bcdb-dfc0908c272e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7ba0d07568f3fa2ff52ad7667fcd21f6d7afe21d344be0c308fc948e3e2b259d
Date: Thu, 10 Mar 2022 05:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646889384

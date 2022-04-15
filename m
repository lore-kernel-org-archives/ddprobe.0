Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01E997A
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 05:58:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650002338;
	h=To:Subject:From:Message-Id:Date;
	bh=dQDLTEEuVbf6YyAmcTn6U+69cMSA2i1YWcbdYknTCnI=;
	b=Y1CNHMlpBOaAoFpDYXVZI5xGG9NR0CO7ttch7C7Nz05YtNDtg1atPrO/ETVJI+iY
	5T24d/G0HB4ado7LivlBEvjmWw+ZV9Pb/xr4muur0WYp/arHYNaVou29u+uKrmoq061
	hM+IkoJhUhqqd5KXEX41xYgdRqhVE7mtXrWEFuYI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650002338;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dQDLTEEuVbf6YyAmcTn6U+69cMSA2i1YWcbdYknTCnI=;
	b=IE7oKeV9Sgi15w+cRUjHnD+1VpyFwuzZRroUS/nbzhlfI67xRiYzeay6s/AuXQPE
	FJryvCs9FNUi/jPHXcWoKhFww0PIse1mewcyVCkMmVtIkoWl9Lc6i12gDbOYIOhVGHT
	4LiBO8LZfqp6A5XCrhIlXdBgQZZI9FQQ92jx2sEo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802bcda1fd-4ea399c9-1a9e-44d3-bf1e-0f35e4c85113-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f5ea76f9072b2a64466ddd4fb64733e6371009f5e125caa5d322868f01e806c8
Date: Fri, 15 Apr 2022 05:58:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650002338

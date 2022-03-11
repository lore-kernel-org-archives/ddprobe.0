Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A826533E9
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 15:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647011785;
	h=To:Subject:From:Message-Id:Date;
	bh=7tFOVdwy0zLzNi0IhClmBUm6gsZn4RfYWURQqyWh/II=;
	b=crex+fZmYZVBlxfW2tZ0q2C5IBoyb/c9kOpC64A9sFF4FtmjcoDsRj7ggS+JEhz2
	ihvg3RwJLmbg7Ps4W1s5B7e9j1ofXILtoqFxRfGJLRlGwj+sOYOWkwrZud0vknq78gf
	E+imvrBnQAM186LxnEPF9J6bOa8ND8sD7mwIH4/0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647011785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7tFOVdwy0zLzNi0IhClmBUm6gsZn4RfYWURQqyWh/II=;
	b=cPQpLxYs5iHkIImjHna0SS5s4uBb6RWU4scxcxkQasLg49i+UHge1ZvI5ovZtjBX
	AAgBvM3xAtokEuYoTkOMXZm9bVwb5+uWPjw2mZGjfAT9IWLMKsJww7+HR/hQwEhQXoW
	lUIAaiB3Dfz29OjXAQeX7/3EemTCHtEgADgGAEgo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f798d6853-a6c03452-00a4-44e2-9054-e1850dc007bc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 921736adda46800120a3eb551f05135a709beb9610ce0f5d5c9816ab4443af3b
Date: Fri, 11 Mar 2022 15:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647011784

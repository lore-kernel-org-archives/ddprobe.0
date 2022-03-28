Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6498F7C
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 21:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648501978;
	h=To:Subject:From:Message-Id:Date;
	bh=xUOM0eaFLZT2Fe7msSlAOj+OwA3D8Zw9sKQP+CoB48g=;
	b=geLy7tO5Bkh8nk79hpljHezGpl4GhGbJBtLTK8oBiqHDfxKBevjHKfpuSC+abqWM
	9huaRqOrErNZpz5JAhoENdB7lp+lDQvRSsW7JWvlbfznGmfDtKqTnSkkvCEeTgwI9XC
	ye/TGcSo8gOGspMQmbhVK1WLem1wZQQXVQrbKWAs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648501978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xUOM0eaFLZT2Fe7msSlAOj+OwA3D8Zw9sKQP+CoB48g=;
	b=bd8BBox4RtwBKb2X0qAJP96NB4LW5W5EM3hIlX2Bk4JOKCpw2Y6nccG+1ny6Mh9s
	V+yIvVfFEE5ytNnkBKR1I76O/3h3tNLgws6PC6F7HN3m6iR5gCi5eFXAqWNGHYSoTA2
	Y4hlEkTmCZVgbzZFkX5rm+djln+7fabB9Z4x8T+4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd25ff48d-9ea0e714-0242-451d-91b5-4d994eede030-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0804a0d77beae6aefa311f4518869f6228588203c0c77d38864b31f436ea4308
Date: Mon, 28 Mar 2022 21:12:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648501978

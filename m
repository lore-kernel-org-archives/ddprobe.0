Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 052F44378
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 15:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647531985;
	h=To:Subject:From:Message-Id:Date;
	bh=lHdPYSNO8lNBeKh5uRKQL6TYs7pYOrd5Tn/gabUlAwo=;
	b=gpYTlp/UKujG0E1WTp172hJ1zfnAlF06Q9XvL4x6mEz9WCLIOOHLEREhqhw2u+DG
	JuZkRhl2bGfkolj+2eUyY6XeXC/gqXjz7eoaIJgRLhU7YIIMXVUUwHrcmZfnf/6oFL8
	DuZUt4lG1cuJA3TLGg3DTrOvgwm8fJUIZNY/HmYE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647531985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lHdPYSNO8lNBeKh5uRKQL6TYs7pYOrd5Tn/gabUlAwo=;
	b=jQ9JwsOoR4/u6ui0Ri+03+uel7h3HNkxG8OysgJ7xLk5VH6/T1d9vF3sCTVFl32f
	XVJujlRCcFD4smZj6bc1kuOQPOicLxwSSoetzRW71oQEoErZL+ve0kDbORzxD5UvCoy
	pf77hbmC7MRETFpf5H/1JrW0gLkUNCZpQflDEjXg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f988f07ec-50bf335d-53b9-4de8-99ee-e8fe4e3b91c5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f10272e779955ba4a23ffd36385bedb541d05a9e085c0cff7f7c7d04cd2b8a93
Date: Thu, 17 Mar 2022 15:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647531984

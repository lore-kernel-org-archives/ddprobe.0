Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 099FA160
	for <ddprobe@lists.linux.dev>; Tue,  3 May 2022 00:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651537738;
	h=To:Subject:From:Message-Id:Date;
	bh=rgDmMD5U0KIx1N+gTNK7+XpXYmupA9Q5KMJ/DXP9veU=;
	b=hAwye8xWtHX5VnF56g7ccwU7g/O4gDwSKqP0NedJk15wGENz9sct6GP17j1Zr7Gu
	eFoKaUukA1rSrTmPjiHtKYTnqfNHZNN7AzzfvB1QVxNDGtHGm0r1+6mOC9rLYhqMs8q
	126HkPpNH4g2evwFVYoScOQjMwckfbLvebny4Lgw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651537738;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rgDmMD5U0KIx1N+gTNK7+XpXYmupA9Q5KMJ/DXP9veU=;
	b=ANWfIV/I4Ap6PKiLwD8IC4evdoY80RvSbur0KQue+AJhvxVIiKZKEz6/G8pZCTaq
	zjyqT1zszhgi/BECAo5GuXMy9nqSKApzzmQsk7n5Nrk01nAdGkZ23sLVR6nw/0sOZu1
	ElI1f/LPgpnT+mOcHu+bq3e4eKLsiJdwzOkTWYTA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808751fa2f-6acc6a44-df24-47ef-acbd-bf032ad6e243-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 78a3e6b8cc3cf85127a4ff40b3dcaa6337e6c0c162e89979b10210fb347632fa
Date: Tue, 3 May 2022 00:28:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.03-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651537738

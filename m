Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CAEF3204
	for <ddprobe@lists.linux.dev>; Mon,  2 May 2022 19:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651521298;
	h=To:Subject:From:Message-Id:Date;
	bh=9BnDl46gWFOJ46dwHxSxQvkxRwKchUEMP9qmkyHcSfo=;
	b=Dwz5K1gVbp6JJn2uAUeEW37o1IzCUgFCKrUc8rTzmeR/c80Vzr/h9GDqe1O4TjtS
	/LxDEsKZXU+rApds8TKyo+lpBwHSh2gZu+fkZl1g4DOlyQIsFThUj0fWpETx/sDHc5G
	hAi8bWP2yXK0TrokxoHRaB1QKvJW4BvuaNwxOot4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651521298;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9BnDl46gWFOJ46dwHxSxQvkxRwKchUEMP9qmkyHcSfo=;
	b=RoYJsdaTTYKgtt11KDb6ImG0jU9jGQNCvfOaimOkOFYd5vRrWK1HUtcnUcaJvrZ5
	JHrtMmF3rIJCnk+uNsKGX0YdUcX1jRMaKtC7wWGIvuT2WXGPr6MZ+wT37YhPkcmApkL
	4foqnEqA1kYT354vXmC4SnE0DGGqipj7wDdUh2fw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018086571f60-7f8aa125-3335-4cf8-9cca-e37e710a1c01-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 64608b559660c52f0bfcbf79be43d23f06a56d97b1ba469c77e914d7d721f6ff
Date: Mon, 2 May 2022 19:54:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.02-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651521298

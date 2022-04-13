Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87DD228FE
	for <ddprobe@lists.linux.dev>; Wed, 13 Apr 2022 14:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649858638;
	h=To:Subject:From:Message-Id:Date;
	bh=wq8IOTsxZEfZ2sg+4DT5NPKqhXtqlIZHtKPb6IxnsbI=;
	b=iRVDgWQqP/BOtRJdy/8VsAM3OcS9vBxwYK+BcRzNrGviB7O66xc/0YoobarJt2Qy
	5lOW//7edwzZDLu52tIeWa9WSDRjOMcxGR5d94qKkzgEjksHbgKoXEgObOY7r3uwAfR
	5c1Ehk70jnX2KqKwdso4SeOL3eF0jiMyeXNon5oM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649858638;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wq8IOTsxZEfZ2sg+4DT5NPKqhXtqlIZHtKPb6IxnsbI=;
	b=RQcEwydMrHHLs7M6Va8IwgVs6zhqlB0wnvM80j2ww3M/MzwY+AI7X+0GPGMNckKy
	mf/aiqAIJksT9qXuJ6TW3aKOukuXogiFHMNOila6Zm6skDrZbByAYrbR9jz7o+CHEkk
	xIx3Or1gEyeTr6XOX2Vf4zPRrK/Fy4M3/cUq1Uno=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180233cf1ee-a187720f-0b92-489f-936d-a69731fd065e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5d46454b0f89dc3fd234dfb20c93e6bd541a6854311a858925c5e79baf0636f9
Date: Wed, 13 Apr 2022 14:03:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.13-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649858638

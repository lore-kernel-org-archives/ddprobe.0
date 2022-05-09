Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09E5923A8
	for <ddprobe@lists.linux.dev>; Mon,  9 May 2022 21:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652130059;
	h=To:Subject:From:Message-Id:Date;
	bh=ilKN5zALoWfd0d6s+auNRIL+HUMBgNqlqDvN9+KrMrY=;
	b=bkTQpls6G0QQojGDJ00mMuqQGrJs9Dc1dDE3fUCULmTqX4fIM/NkfDAh9n/dtimT
	GFhk4aCADVph8q/GGH6P7O90OVaVdf0CARfyN//SG7UoaBIqC+UL4g9I2HFNkmQkkXb
	g/Dm/zIoN5fEGvkGuVYgAdIfzuWfMYJiaRQq3oyM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652130059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ilKN5zALoWfd0d6s+auNRIL+HUMBgNqlqDvN9+KrMrY=;
	b=CbV9mKAoIEo/JJ9q/AZJXA09hvkeyR8ElH8VsXn3EUEG2XznjecxXieOyaYtGqAm
	vdRxs0AABWaXgJUokzcAVA26QF2eguUyPfZoDKVBmpFY9IzBPw6X1czoweT9teD5iY6
	e5FMfIye5LXo+bUFL9F8wEvz2P6mdY5DjFmYFjPg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180aaa013eb-cccc8457-055e-4519-9c57-01c3e13c454d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a6e8f94ac376eecddbf6e0a99bd7952af0624dc420cb97e6e61b5dda6c8acad0
Date: Mon, 9 May 2022 21:00:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.09-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652130059

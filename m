Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDA6217C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 10:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654596479;
	h=To:Subject:From:Message-Id:Date;
	bh=Uesoo7YminbgFc4ekXf8p0NV0VqsNAoJYj+G9vXQqHE=;
	b=ezoF+SrszskS3VvjsC/u72J6E4Z/uIos7yu+NEqES5jLfKV1lv92KoQeqQDd/ZBV
	IWbCRAW27c1A/qi4ZS8uzDtDpofmyHRKAWuza/ZInPUPhk0STJ0lIQ1ZxH/t2LA4QS5
	/dKxGHub26WeXh9strPKg7ntP6JbZNZifREQMNDE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654596479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Uesoo7YminbgFc4ekXf8p0NV0VqsNAoJYj+G9vXQqHE=;
	b=F8mAuS41nQBQVLaG8ePM2uIUq9BhhvWWXASdci8tE1VZDdxaX9b3kgy4F8Erc1Jv
	djKoa9YmwYU2lMjYpoHFFn6TmHvOKY4kjf5XH1QwvJpGA2676LwD+hmbfQW4Mz9w1og
	tTdXsvr2L/ZvuIYoYSBNB9KgiHT6VZbf7tKUDcN4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813da2a900-b6083598-2501-418d-a3f1-21d51fa83bf4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 93d4e6693bf896d204d1afd447a4cd5a766ef2509afd3b09de95c4f5dda55bc6
Date: Tue, 7 Jun 2022 10:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654596479

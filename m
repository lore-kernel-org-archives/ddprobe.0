Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94846C8A
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 15:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645631485;
	h=To:Subject:From:Message-Id:Date;
	bh=im3yqHxXpCoHKzaSj8Cpav0/29qVQCyvnetUolIKMR8=;
	b=QU4BN9AgD/uc3V8qbvO4rBYKvQcCtVbWvTxiM5lHw9ln7hCufGcg0VH9bUVT+3zz
	+wOBsI8URUIYHwS7AbPNS5SM8aQMYXVGvvrq6KJ2ptOiQt/u9NBrqRId0HbH9VTkkpd
	mfQL3IM7ATzGSOAH+2lfhL06fOWJXz/vlA0iVSZo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645631485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=im3yqHxXpCoHKzaSj8Cpav0/29qVQCyvnetUolIKMR8=;
	b=k2EKZbGG1W6L9sAulbHmqGjkjnxdATNJf3UWzzSN7DGjIBSW8G10rhjfOGe6gyO3
	bB7zauPsJcIttwykhI0N+OJ9QQE5Jj8NZtSgSRZpU6ViIaaC0V16wq4XuIe1EoX+gfQ
	d5IGnOQ/mTVJfJT9jIO6ZuPAH9RUHvTv1w45+JCY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2747b409-c311cc24-1b73-4b2c-b561-37370aa745b1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f1f199edbeda2972ec107611c82d49c53db94bbbb3a99d87d801782789c936fe
Date: Wed, 23 Feb 2022 15:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645631484

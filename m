Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19C162564
	for <ddprobe@lists.linux.dev>; Thu,  7 Apr 2022 14:24:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649341498;
	h=To:Subject:From:Message-Id:Date;
	bh=9uUOkQOe7AZx9zpYeClBfJxTnCd2uig5eB+5irLwtMU=;
	b=ZUK8kOuV/MfV8CbZOEQwgRdVWGUkRWrWravhQM1Cj4Nli1Yhpdmr7rTqH7t2MwEn
	iN0kOPSK287JluxwABnfk9XSxRl0st47u+ngo5pxUHqw9GYfoax1oIFLmz/RzFybZGX
	c7m2oOg0HG0O/hWyHNvbPhNgNwEuHtZmyfusHSiE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649341498;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9uUOkQOe7AZx9zpYeClBfJxTnCd2uig5eB+5irLwtMU=;
	b=WELAYcB3fnnKyapehOOQ4nPUdipa08h4k/NJVA9VwUH0zxifFwkUQGxRJbg6Ed2N
	Me5QxGP6SiclqBXs3xwTCi+PgZgpBPextmRzv8EFdXqejh4ejHB95FXq2/O/mLNwFWA
	kK3ws3ZuPxOte4bO3zwCjkEX1jG2zvtdF4oxx/hE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180046a03a7-e85179ab-161b-4064-bfe9-123020249ca7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4a8f12708738bc283feeca85cf8157fcb872bdf1be038036986c4ab5aba9fa0c
Date: Thu, 7 Apr 2022 14:24:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.07-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649341498

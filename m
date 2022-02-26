Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79B7A7B
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 19:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645905384;
	h=To:Subject:From:Message-Id:Date;
	bh=1quePY/hV+WG4IUmBGd6WQS6tpIbR3Ced7lvpHmbvxM=;
	b=Rduo1ihuP1eH3WK6T/zt+8zDy5uExljWJ5vRpJzma1ImeVa5ZL+7my0ailbNFk5M
	7QM1bTI9vdF/cm3SDK513qu2RWjABnuX5+uJdw3JUyQU3rg2YQJMCSeuDk6SXWO0dpp
	SGHKzjAzZcq+kUP42H2y516bxqugVclYK3URo2I8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645905384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1quePY/hV+WG4IUmBGd6WQS6tpIbR3Ced7lvpHmbvxM=;
	b=B7Yx/3t5nrrSqcvdTyJeAcxXeC3nd/wepYIFOgAcZg+2Jnl4bTTy5kfswl22ZthH
	uIShJ3zAUUF13YdYYRoDoJfuIeZbjERRvW27li87osP6+tmWeT8U/azjjN2qvCfeHqv
	1yDSpAJ0tP9w+IiqUKqKKgEXOuD16Nsz8zGbjvIM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f379b153e-12faa083-50c8-4d98-bb93-18857c50c421-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: befbce859b081db3f5e8152736c15452af9558a7edc8b35c44f305ba34afb61f
Date: Sat, 26 Feb 2022 19:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645905384

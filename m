Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECDFF1FBA
	for <ddprobe@lists.linux.dev>; Tue, 12 Apr 2022 13:56:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649771818;
	h=To:Subject:From:Message-Id:Date;
	bh=MzSrEvs6GOV4ASr1T6sSTXGb3QM7vvt+TG0EFydRz2I=;
	b=WNRQoVIqxtnS1Xm8pqlW7ETL6PAIi/X1sYZQsRFo1fMyEdumlpHiMxCM9hPd34VJ
	2haEZ00E2KjHVxR6kJMn5vXnepfF5SNmigDvlW6VHRY1EKNqCH4HOxN5lrfZDo4yWk1
	9nNz7j+h/OWHKIP69h0eSey8qPvai48QWXd/uZCc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649771818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MzSrEvs6GOV4ASr1T6sSTXGb3QM7vvt+TG0EFydRz2I=;
	b=YqdVyLMNE9Ius139FJdHNj17O0Ny7/4oQiC7bO7/VrBfkfB49Clt2vn7kWsSSLyz
	KTvEv9s7uCfjN3v7U+DERr2wSIjoYH13DGrbA2E/G664tItGwS4pHxLnBNI6Z9LYk6u
	Z8wiE3EkeFQNYqESgP93BE/O8OqJZEaTnI2hN6eE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801e102d4e-931ffb0d-5d72-43cf-9758-c4761ec72211-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 16932fa1b43e024da18328af8c3c6e6adba5c3b5e11ee5dc7802d221c66765d2
Date: Tue, 12 Apr 2022 13:56:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.12-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649771818

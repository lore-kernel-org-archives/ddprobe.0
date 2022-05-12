Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83E903D60
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 20:04:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652385839;
	h=To:Subject:From:Message-Id:Date;
	bh=o7a5Mifh5/FumaIIa0ryr/ViUY5cw+GD+b/qfWkZNsk=;
	b=h2Ex3s65bmet3bPbz6vaZU8E0q7HpHUicJpS7DuYYYSH2gTuwI+PoCv36QL8u9Jf
	zwznOm+C1AHuRZHrwd3ETojmPnyDED1FCUEED54GjGe6o6gOR5E6cLTiosL7CXsP7Qt
	7RYhLz4mByNj1yzss/Abtvm8krXu19v+E278+GOM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652385839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=o7a5Mifh5/FumaIIa0ryr/ViUY5cw+GD+b/qfWkZNsk=;
	b=OjsYrMW8skQTwqTwipJfLCuOob8i6exyOtY6PWhW0OHb6QfrrWl1hQhCucbolYfd
	k8v1cmuChIa6cvc+nEOIYN+eAQlCWEvA7RseJPpKSnrk3EkFvabLnk0Wp8YiixOT98X
	uc1DQyuWADC7qWrb5+eJVkAa2m3wjCwl8LPEAYy8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b9def9b3-28b01a4b-cc70-421c-85c8-2f8a5794b2a2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bab6293d63cf5ed2f3d74db9aaa39eba7f3c14f6d26132f4b0b47266e56d7d29
Date: Thu, 12 May 2022 20:03:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652385839

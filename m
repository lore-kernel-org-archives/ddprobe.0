Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED1B33203
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 19:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653248519;
	h=To:Subject:From:Message-Id:Date;
	bh=rJM2JmhCAAv2Cep/6hXR39BFINdirmQXkJjXZRvQQ80=;
	b=LnlFAcYfQQd91lf18myjH3lx0ZLEHFNu6ZGZ5qNZ9KNszScBcU/VDHo+1fTOTe6E
	ZUzRXM3M8AQ/c0aBvHEl05Lq7L/9zQXO/2UULGtGxvR5zHJaPudITLeWkN3IWxLMu/T
	jvHHHC9YEpHViEUawEtzNusenGL0SpSrXgiEtIQE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653248519;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rJM2JmhCAAv2Cep/6hXR39BFINdirmQXkJjXZRvQQ80=;
	b=MfxwUPEmN4tHCzqRznkC9X/wOhHpNrOa/Iyyy+3h0q+4H1y7jty7BQIkHvTztGTB
	94FE06GXqh8OaHZ2kOyPg00mFpUGF85mas18kQVIvwwvq5eTMQ461kYtbOaNiyvNZCn
	5BdZCMugombVIA2afkDUXrZiE2wdju+5aWwPEb6s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ed4a6c33-0fab2bb8-89bc-4153-a9a7-8a1d83285b58-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a08088f26bc369c548d989363786212ee2e1461b2b986b5222feb7e8b8782694
Date: Sun, 22 May 2022 19:41:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653248519

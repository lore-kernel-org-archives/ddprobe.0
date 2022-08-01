Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC5167F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 11:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659353453;
	h=To:Subject:From:Message-Id:Date;
	bh=82escoJDikzXtug0aadXXnWZ3H9VCedm+bc6wJQVjPM=;
	b=WrmCoxkelag4Kt3jGEsnmxBk2bzoku9qh28SXhkSq8ZqPI5n+djqUBM5bhlpkVVj
	v4DuB7xbaeDFX4gbiu0akRZ3n3dBDrlIGt8STxAnE8C6NZoDKp7w2Gsg6xvlmqMAEXa
	7OohFMLum16X7Nd5p1lYtv35J31SaK0dsVZWwtXQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659353453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=82escoJDikzXtug0aadXXnWZ3H9VCedm+bc6wJQVjPM=;
	b=FYdq83tBCGMpv2NKmOOdyB3wswZEyUKIUAsuR5/o82oXUI+cjKJIvLffldjVSMbk
	zUc8jI+09sPhtO+77W7XF/oGAX8XsHqCvP4X77NFjjG52beGTd2q+8ePXSsnjKvFy8L
	fa1KWO6iatJOGZk8nAG75+oQPLiZ7dCwYvtJiHHc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182592c501e-357955df-35c3-487d-ac83-71c7dee49d35-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6f37bf665decea5ce43b75f85a815c51f5f6a23653d4971350081e37705e0446
Date: Mon, 1 Aug 2022 11:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659353452

Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED3E77C
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 09:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654853819;
	h=To:Subject:From:Message-Id:Date;
	bh=sUDcFGrsgE2GkbfyzrD8drP9ZgLkBhp+So7efR1SU2k=;
	b=WngD2fr4o+0W25skRz7ilIAIHfZ4UNAeymcKcYiIV2mynd+C4TEO36ZFx6K5RJBi
	Xv/nUdfL7rr1W7VJLRuBqk0bzT8BfSANyiTyKuIbEoA6MYiIB83qcCqX2CUXDRmPLDp
	Pt18yo32aq7YqyIhcBpt7osQEFzkZ31Z0l+xJG0c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654853819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sUDcFGrsgE2GkbfyzrD8drP9ZgLkBhp+So7efR1SU2k=;
	b=Peg/GnWl8iNTrH6uqgwRO5XwbCRYtQPNH6f0uSVNVLhO8cEBKpvcb27iUxTCgtSW
	2R9KF80bV09I9mznkSQUrdvXViZEGXPLf7pi6IexDCm7K7nC/T5zyxqsaYhyI80e9Uw
	9enUztWiaofDGc1shlpyb7KylVyQJMBvhxVh0alI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814cf95b8a-d635de47-2bb5-4802-b173-5b2599f59cc4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 28d7fc298fbc42701f8c3d44854d560606395e320bd1b8470baea84201739b17
Date: Fri, 10 Jun 2022 09:36:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654853819

Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 147E47E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 15:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658590012;
	h=To:Subject:From:Message-Id:Date;
	bh=GHo7iWLzgkuAlO05+mFWFt7bX2Ga21j/bhY6mRalYF4=;
	b=YKBJQLq9B2Jh/sd4iKP4QlQoY7ZLcHmPmh9K9JBV1ac+NEj8A8zJIhENF/ZW1S+e
	uKiOhD7szassK0hUSPUcmB9INqD//ajSJ5kqcKtRdRBl2eORSuE/IOScCa0t/mJxXly
	0+ugZ7FEqk68sN//pp9tH9znoUSFVfVfObgCGRtI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658590012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GHo7iWLzgkuAlO05+mFWFt7bX2Ga21j/bhY6mRalYF4=;
	b=e751t44/Wk3BDHYrDqqg2ll0r60Ehf+o/AY1VA80Plg6YBaahkgii1Afr2wekDuD
	ul9CAfUTj879gV8TXLHeUo4lk4mGPn+kuqw3t5qPBArysxHtsTwYyYmbp8Xj3gEd0qs
	WpWo38UwRqhIypasU1ZWZD7YRh8q/Gp229wmLiF0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822bab2360-2265b415-a587-47f7-ba17-21bd1cfa6584-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 21f1cce2bed1e9ecfea5323de05c4ec2cce4378358b13f2926254f069c53e687
Date: Sat, 23 Jul 2022 15:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658590012

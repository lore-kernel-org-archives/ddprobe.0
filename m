Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EF517B
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 05:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647753085;
	h=To:Subject:From:Message-Id:Date;
	bh=bGacmMEkcpW3mGTqq8DbDUmqzm8QyTKz4objjbGcy/s=;
	b=Y+H+CGOQMSddRw0RYCZtBz877d1c8fQ7CBwnXxBcSoHetg4hWAV2ROfesEKZxVq6
	20eO1Ast1Jn8vpLOk2Nm5eZnJPxUCiPjetUOkGutfh4wI6hr0ZbKEgxe6jbOqRPO5nZ
	SVVin4qGmCBNjOcbH9ktcwE0Os/b3qm+D/KaBhKU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647753085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bGacmMEkcpW3mGTqq8DbDUmqzm8QyTKz4objjbGcy/s=;
	b=euRy4rQaUxhZihEz2iqBjAznqEWcaQQ8ZxIObt/n82UwTthhagrBwWeh1kBg9SGM
	Gwvey/dMKw1PVHXlAOyd5274C11VdvcYHEVf7bxRFFu1SOjCfwHlcBUwvMUfN7VD1f/
	/UqGfaxL0fwhyJ1avro1OtO4R1b23vCDDo+0FSA4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa5bcbf5b-d1da3011-6ef0-4e3a-8fad-c7caa0bb554e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cfa2f54fe0062251bac1fcf5dbea6d45c9b4c18879a52ddb1a2cc8d7974fb0b9
Date: Sun, 20 Mar 2022 05:11:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647753084

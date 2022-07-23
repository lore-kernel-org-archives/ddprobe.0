Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 311E37E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 08:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658564812;
	h=To:Subject:From:Message-Id:Date;
	bh=zyBFZfh+H6aQ7clXqlRSHybSAYpNYYVeY02I8LKgwyA=;
	b=Fsvmmu6QqtaRoSOB0uVlgjzih9QObC972LKJFZT147sHtGlKkbtzlqukXqCu7xv9
	5FiibNgFGtgzm8GG3A6ysdSyBgRMo2B1D5dmWAFxOJyfO+dtrzxn1RJbhwrS74m49+Y
	sEUC00bCtfPmSLAm1m76rhpeTnNMoLQ1/fAlF3PQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658564812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zyBFZfh+H6aQ7clXqlRSHybSAYpNYYVeY02I8LKgwyA=;
	b=WIqmCfRk1IHb38iuE0MbNv8SdBrhqK3GPC0kQRXZzt7981G8eZ1okblEf5zxOyHm
	Q+jWCz3vKREmx2j4vdHTvc+kDYGmwqENeFOA5vTNv9AT9X6TYgnROIB2G+fubunZI+s
	7WIuztkfWjx0xDOaawJFbLiYH1FzlNRTTo8V8Z04=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822a2a9e2b-99819bf4-8cf9-4fc3-af20-9a453b2cdf12-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 28097a4b605d934195425a2f2acf8930985780dbe982db3d17e0d6d457791b08
Date: Sat, 23 Jul 2022 08:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658564812

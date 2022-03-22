Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B10D1C6A
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 15:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647963384;
	h=To:Subject:From:Message-Id:Date;
	bh=b47uC8H58j6vR1fKtXjqnnAlMwAq1wwi87kc2JkUzMc=;
	b=kdTESfV+N3i8XVn8GNn7vGmeaG7xH+is7WbDwiZitXAL4kXtYBhwd0n01WbcuRJA
	j2rSqbCl9JVY3tMCd8WQxLwWWkYvtBX5CKOLeTZHBAC8rr8ONOT/p6eLGVu1RV1iT58
	Pf0Gb6GOFbRi2LPQNiY2miRmlqo+lyBBApZ+N18c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647963384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=b47uC8H58j6vR1fKtXjqnnAlMwAq1wwi87kc2JkUzMc=;
	b=bI1DTqwUyNuZ80MZiYOnMNITSh1PP4gbdYe0fKdxrcIb7hluaFZZvW7xg7i3rlOi
	47vgtwvjYopcsEAXR1aQYQEiOVEQanvfJ/n+nJaqZ937wSE8Qstu0ZT4hVKtQ1bkm2q
	M6dpA8Y/qvGY6v4SkcMILM2WwC0arsGr08ZXj+sQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb245abf4-5b6bc2bc-1ebb-4f4e-8fc7-ac18251a42d4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a929f763c3491b8d86f43538454effeff0d3edba7bac833a809c003e7853e849
Date: Tue, 22 Mar 2022 15:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647963384

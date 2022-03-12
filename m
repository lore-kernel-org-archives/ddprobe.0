Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95EF5361
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 00:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647044484;
	h=To:Subject:From:Message-Id:Date;
	bh=liAMV6KERQV0kc03I34EVEksWprW80HNEBsMpMEy9Dg=;
	b=UFbzfSJ84ssVzFs6py5QyCSMaBFDbhzXDqc54s5xzWQD62Ur70JtW0zjqwMrdwRB
	GNlxSwHke4YZkdZss0wlPaA20UP5aGoVY9z06weI0NsNu+81KEKp+jcDliz6TQro4CV
	vDOA6Pffm7CDzCfwGGTMOdAl6n/wSoKV+h3XP4Ew=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647044484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=liAMV6KERQV0kc03I34EVEksWprW80HNEBsMpMEy9Dg=;
	b=hfR0rXf69xMSjyK0E5KtzOY69DdA30dB0Q16dqo8bgR1kiQbBNu9OOM/YO5FNtCC
	QHN27YwZoGQlq3hFpkrRggFdTf+6VZyarGtcZGECuV4KHxZRCjDSeLlx4l1HerQCEHU
	pNePhhR82fuFF367ILDokei9SdjbJd2NG69H73EU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7b805e99-e984a66b-8093-4173-87ac-9e111efb2bf4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c32373b4b2f8c93dabb2e964209af545edb8fc71edfb7a269f6ef7ea3668eb1b
Date: Sat, 12 Mar 2022 00:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647044484

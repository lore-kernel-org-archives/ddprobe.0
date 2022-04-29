Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D5141FAA
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 23:19:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651274339;
	h=To:Subject:From:Message-Id:Date;
	bh=+Ove5CMSsOzZjqKD0pKOgA9H2l8JDHDDS+mEb5oiST8=;
	b=S2Zjee+bxKXNipobb17Yp1ax8MxlhvPf81JQo7Y+My8B2lLxRmivbLvPwxkA1yGY
	JEYXg5us2QWEXu+1TB5uWcRcUaznFY7HEqROKkay/YW00egOiOOl2XzfQP0FDcwT9Kv
	n1V2lq+6kWrDnWv8CR1AjJH646FcRzejLcJU7zQc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651274339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+Ove5CMSsOzZjqKD0pKOgA9H2l8JDHDDS+mEb5oiST8=;
	b=Ua+9aNQeYc6zHvsas8Y9xxmKKF8671kGDoesxze2pGd6WdVPRroKMKLObvtKIdHM
	bZwVwSSQZwHuouARDzz2M1kRgk4xJBKkyLPNoRbPs8/3IZsZXq3Nf/aqnkL/5Cbvboq
	m7KvBg6Wqf+DApjM3ydsy5hQ9OT2YKxTu5Bon3u8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180779ed007-7adad754-238c-4c6c-8532-f7346ded1b6a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a6f098e0a88504ad374f40ac230a0d710cec3580ea344f6648b666bd4062a3b7
Date: Fri, 29 Apr 2022 23:18:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651274338

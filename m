Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18A7710E8
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 00:27:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650414478;
	h=To:Subject:From:Message-Id:Date;
	bh=FDvWWJnSE1totjKrexUdPLmbqK0E73gre6U3l9WmswY=;
	b=GInrZFmUs77tyWwH8+wJ/36S1YgYtOxSXa9hvvfAgwuU+R+GoFipdzRHigEQPb+k
	j2nwpmM4iuL205wGOiuWTtKKXLGC+zq6abawGryEckxbISl1M9ClNQgcUSoJYR5qekJ
	BiANbs/BuoxjNPWmblcGaOzaC2/dqSeMjuV2+mBo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650414478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FDvWWJnSE1totjKrexUdPLmbqK0E73gre6U3l9WmswY=;
	b=Jn2DEI9H2g3yUmeQPS7xYCfqZKoOKopZODA4QITDNwI4tdixBy2ghar58Y3/v3K4
	E1UQ4FrtlO+Xjl2HdI/5QSL6VoOAlL6aj3akk6LTiMnYkbrOgB1pQtWzKZC5zszu8nu
	AqzfaboKbNrsKkO+Sa7j/7jpRmTm5uC4O/NGw8v4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180445e63b9-af8afd1d-28d5-4cca-9a9d-8dbfd60a2cc4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3f6044ef1af18c525822ee8eb03df50b6884fb3454370e2bb28a828619460e94
Date: Wed, 20 Apr 2022 00:27:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650414478

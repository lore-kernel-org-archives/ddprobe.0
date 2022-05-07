Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 119AEA23
	for <ddprobe@lists.linux.dev>; Sat,  7 May 2022 01:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651885678;
	h=To:Subject:From:Message-Id:Date;
	bh=Mmt4Sw2UbGbk2K7mySdPAENnTuKFYXB27QYESNjMUW4=;
	b=eIssknekQX2YRn3p4XtBKrhiSZ2d6TMIr0JTJWfYgDk1RgDiTjXwwwKpynoDHISI
	iwkqaspypmVNpnreSybFQjLcPr8qJctcDQiq7p+ajhVzX71q+ASpXM++RafDdN8ViXk
	BDJ3ZZ84b1aEE69zBllrIa+y/UAz2HD/yoyTATsc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651885678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Mmt4Sw2UbGbk2K7mySdPAENnTuKFYXB27QYESNjMUW4=;
	b=G0jgVrtEIN2qXikuHV/YCLyubSe130C1jxpMEq83raSWMND1kpEmdc/yTvgZBFKo
	K/t2p28T2CePZ11YRkyhp6PkLlw4PK5Cnl4iK8ZUehh4FnoYWYLDShi0Ch9HqO21Z9T
	zelpF86JxOw/JYH/1YBKyRU/FC7oieyO+vFxxOh4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809c0f1efd-5d6c2772-01c1-44cc-a6b3-02f77445e4a1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2214f89fd02d2afaddd55f0b8fa58eba631719afdccc6fe028e0899eb40b6a3b
Date: Sat, 7 May 2022 01:07:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.07-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651885678

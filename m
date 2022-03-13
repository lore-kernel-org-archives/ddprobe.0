Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE3547E3
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 17:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647191485;
	h=To:Subject:From:Message-Id:Date;
	bh=SZ/bTL00I0aGS0tpkAx49ckE6t43vU/Q63xexV7ztkA=;
	b=AHAo7O2v3lHLItqNjti6z6d5p5rBU2WoLmmHqK9LygpcEkASjpLi1kjdzL+E2ayT
	bg55vnhirWoCQqAlBtQdI44nWuCJb86RtiP3rfjvOlur7rC5F55VSCAmoctRlPsikfb
	W+cfIFqqQ8s2tr2I/8rXhFpo3EinhJKzA0ZHEosI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647191485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SZ/bTL00I0aGS0tpkAx49ckE6t43vU/Q63xexV7ztkA=;
	b=ChzDbmCtT/nGq5NwGVPDLvACMO6rGl23amM9jM5AWnKTWseuSipIbgIPcFf86CaI
	1cIQuLl8F8dOtpp7i4SOr8ETMOeQGYySOtaL0gsZFtBHfcbUpWnQdZrKhM6xsHbZA9v
	9KaGKi7z9LhTkH4fouYOls39CGfQ+Ogx3rkVMPYo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f84436978-f659cb58-7178-4203-9734-8ccf68ff5e56-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e779e5f3493f539e95fa4ab0a81a4b76029279210992d9094bf670f70c5f15c0
Date: Sun, 13 Mar 2022 17:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647191484

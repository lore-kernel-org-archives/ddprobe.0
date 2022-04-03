Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E659D7A
	for <ddprobe@lists.linux.dev>; Sun,  3 Apr 2022 23:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649027458;
	h=To:Subject:From:Message-Id:Date;
	bh=RSFEvoQx6raqjDWcfSDpGd/k0k968j+t7xhZXVpJ/xo=;
	b=PPTJEV1Ecv1X9k5Rdk5/AGx7dMcPbi5hrMND27MlbBBa2KSYzXJqyU9xtotv8tvl
	NFqBD1T58Tycv3bi8LZckg/OqyoyH/QAAVZpQd1lpxKIfbuwRLLGeaMVhENTLJPY4Xy
	QvyvndE4MXldlRUSoKBGgisCSabjDw2n9Y/sCBqM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649027458;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RSFEvoQx6raqjDWcfSDpGd/k0k968j+t7xhZXVpJ/xo=;
	b=GK3erx3lC1kCh3Xd/RTrfueyUvdVrsoPou4VTFxn9Dv/1fwaFQk5bb4Q1l1/vL2w
	H3tRilfXD/FIlOvwDQBhCx9BLZeBcKxfuCmYIdA+5c2Lmbii1B/6uyB9+Xc/bIkyCZx
	ef7BO/uiqnS5Y1HDOD0EVhhrTBn1gbanDbIcZQWg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff1b224e0-9d55c119-0cd9-42f6-a89a-f55cc8358ab5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 99336e4603cd752be5ff2144bbf338ce7ff65153d1dbdc365215a5551d720523
Date: Sun, 3 Apr 2022 23:10:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.03-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649027458

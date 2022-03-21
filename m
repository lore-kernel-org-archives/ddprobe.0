Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7489533D1
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 11:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647862284;
	h=To:Subject:From:Message-Id:Date;
	bh=HVpnYiG2aFfZyL3Guv19qSAuzpCcIvm0zMeIasS6TIQ=;
	b=cFBS3PSmZnhRKQOLp0y1zNNaVUp0W4qRGGZcOyihcw2+gcosiUxjXceNldC9cPFZ
	ExzEzmj3LzvQmvGu+/P3qF//3zjj/Yce1jb8iIxBusVpaHcPhVeUEG5SqlGPNbalyB6
	2HigchjZfK8Kbca1xAFGBDJTa6Tjc2snvwryPtaQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647862284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HVpnYiG2aFfZyL3Guv19qSAuzpCcIvm0zMeIasS6TIQ=;
	b=e3l2DYxCohAe4c7c9U+LQlmJ0W7gwibEXVutJvEFlxmeIXbO6Wr4o+Fu2XW/3f+H
	WlF/5qCi+JsUUN78gMDhgyZV49C+NcgiXylN1ERh1JbEntutfIuDU6rZYoUBMTyTCb6
	BPUsFQV4ODjBpmI5UpprdZNQvN1ZRU6EtHaL+cWc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fac3f0204-95cd4e0a-0179-4de9-8a13-633ecdd46dea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0a5446a8d44ab8f83f440e0805eb6101bc767cf81fc3ee9cdb99a8cafed69592
Date: Mon, 21 Mar 2022 11:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647862284

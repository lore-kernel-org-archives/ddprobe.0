Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32F584C7E
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 16:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647619884;
	h=To:Subject:From:Message-Id:Date;
	bh=3cUZBKQRkHr/IZuJ6BOZ7811dZMFi00YWOmXugYep28=;
	b=Ic2hzJbFbmFyWHsUYkwQ08Dr/Ax7lN3xkswmlt2q8j2SLGVpCWFFxs62m4Ibk3dQ
	L9HJDJYqx/VWI/1SJIIqNvDTXPLzUlE8PnbpNLpMyFjimHmsVQOHjG2Lgr/+yqKOiMj
	N7F5js/AgYvx0eXeuY81cZfXopJFS2pywMFsk3pw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647619884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3cUZBKQRkHr/IZuJ6BOZ7811dZMFi00YWOmXugYep28=;
	b=Au1hU36b04aXPyPa4blMYb652sgouGu+P3pCItVB51sofJXur86nDV52jPb3iVLV
	5PTmqS0OJ46k9RZ3THjnp9tr/x37wzual60BinnBzfFN0w7QEVSb0EiNmCPfeSMl4iB
	Bcfj95UPu6ikI0KQK1x8F2ob8HeZ7n3QcSlWKwjY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9dcc46bf-e1112218-1c01-47e0-9f73-386451e0effb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ff594335aded5dba3cb22bc2e2f7c5250d348cdba2a3aa0f9d07ac3b938e62ad
Date: Fri, 18 Mar 2022 16:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647619884

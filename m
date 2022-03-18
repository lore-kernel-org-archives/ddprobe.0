Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B4D448B7
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 10:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647599784;
	h=To:Subject:From:Message-Id:Date;
	bh=wnUjxF8iSTYgfbJhUu8Fu7BYnkSaGKNv4yMCrK7pzw0=;
	b=F+preQW278H9VWup0tLtG5y/dAbBFcBIaepo66MC6e7xOSosWM0lPRaDvV2DEIfe
	IIcFhOxoCYyRbORoQtE3fSHTafJM23Nr8IydNfOhEicGl3+nxl3V5+xz+VjVsYWzGsH
	WVyNyc/ZShJKYOv0vnX3RlXFOkMplAI5CwfepXkE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647599784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wnUjxF8iSTYgfbJhUu8Fu7BYnkSaGKNv4yMCrK7pzw0=;
	b=Z885WvlCGovQDFGtw853Q2hJRohJv+MLq9qglOZN9yDG0tGQ0+2GnAXJMxQ0ZmSi
	ty9eQQoWXTVsmqhF3dDGh5Kcp87egiAND3++hwODiGgBF238NZRxb+j9PcUUfe6pMy3
	DSZPf9oripb/VIIaPIjkF7/n0/iXmiC6rpCUNSwU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9c999350-9e0a87dc-150c-4ffb-88ba-fa56e049e254-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e3f32cb9045dead014914e752c958367c2b226caa7646a241c93ee57e252642a
Date: Fri, 18 Mar 2022 10:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647599784

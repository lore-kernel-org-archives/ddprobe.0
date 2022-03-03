Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79DD5429E
	for <ddprobe@lists.linux.dev>; Thu,  3 Mar 2022 23:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646350284;
	h=To:Subject:From:Message-Id:Date;
	bh=KGA2en+CmrfQtvycNYif8J4JWSpSDl0+uuLGV4lD2qA=;
	b=M9VF/lbnrmm+6d+pFMtWG5qhiojyG4kgPwawqtFRP0ZZnuDjjeM12OG6qOxTwv4x
	/ydpcjBMqQk+1SrpTIhHPnV0g35Cyqx7RaJslsC0z68CgwfG5pVbCzlmHTFAzZC0utM
	6owLLHcp/VmwFk6eIXhuMf4aoKiSQupRCC/0OVz8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646350284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KGA2en+CmrfQtvycNYif8J4JWSpSDl0+uuLGV4lD2qA=;
	b=EdUkn6SuySN6/AZTK2Jg2Nocl6Kq0wyutofqswAObsWKaEk7uuVjmIafjbF+b9sV
	QI5J3wmScTkP2ovvJ/xShhr7qgx7JHRUQZgpOzUaVYsLJCgWuU7nogpKo9HD7qy3qZ8
	p2tg+J9PmDK3E0XtllNrKCYsRHeHMLE+qIPY69+0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f521fb7ec-4c32a0a2-6e53-4bcf-b869-a8091a3a61fa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eded9f3029d83690208fb35527a50dcfc4616c4f431df473e56e7d7091c299a8
Date: Thu, 3 Mar 2022 23:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.03-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646350284

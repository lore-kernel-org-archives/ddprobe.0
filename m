Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CCAE7A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 03:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646881584;
	h=To:Subject:From:Message-Id:Date;
	bh=q6iDTpiUajDWuRprKLGU+5h1+nqsuElqFQY2CmhsUkg=;
	b=IOH/o0mCJtof62o2AInfLOcizhbv3cNPcKDjfO8kVe8Wl31NCCsXr4UiAZsCfDLP
	nI/yDmf4SmRC4/lokZN6AQpt6csCwYgmwyntCQcErkT43EsSAeZtzGZ2zwU15uwqTbB
	DO/xZIm5Hp6TTvrmxDDstIwg1IpU/GfGgENlxFoY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646881584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=q6iDTpiUajDWuRprKLGU+5h1+nqsuElqFQY2CmhsUkg=;
	b=ceP4Ci4r9tHFQl9uF26TqVmqFfFbjIl41rJMiSRyncoOJD3+Qm6kIBHtLJz9aQk0
	f0F+5kVbR3JnlnCvfDTm1zdAWL/kRhtxyxJWiEaTuD4XUx2PkAT5XNMc9Tt+la+/44T
	iQ9m2378/iIp0dT5BiDc1J1dU2aF0YX8QBSVuLno=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f71cab662-70b34e8f-db93-47f2-a05c-27d6f51ebe7e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e907edd121080b8fff642f0d92415f17796b9ebd819c69c3fa09eb164b7c59d4
Date: Thu, 10 Mar 2022 03:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646881584

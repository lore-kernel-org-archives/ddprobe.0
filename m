Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 728CBA56
	for <ddprobe@lists.linux.dev>; Mon, 18 Apr 2022 21:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650318598;
	h=To:Subject:From:Message-Id:Date;
	bh=zfvqCzdhqnkv5WlSvyvMjpaqJg46q+XbKa4Z91d+KZk=;
	b=IVWMYllVA9DbGMlmQfSwD8H4UOjovobxKWqIq0q+cyzoA2DXHSkyJaYuom42JXcP
	U1kUcmhQUNliWHWTxXWsxFbg+MEBCo5/6o2vt6umq689mkbr2cKZ+HaYwai5hJhEQ6A
	JUPOEB/ahl8lNusyLEVgZVuVZuPlrTbYoxfO4tX0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650318598;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zfvqCzdhqnkv5WlSvyvMjpaqJg46q+XbKa4Z91d+KZk=;
	b=hF2sbOz1RdYpLJagCoBvOH4leLlnh+fOG+/jF4ig42FXrZr9ssYBlNoO45kYG01L
	6NaBtrwje/IHhg79hiEe4y7wtuWLTHq5/57KhIW5V5/Wb5hWh3x7EHxNL4pftt+nXRg
	71+unjhjm6XKxsK8OoUjXAUiHDqv8YatkS1kMl7g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803ea7607c-19fb4f4b-b35b-4fa1-84c9-535a0d685888-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9b561711b96e88e6880670794dc1842f3bdf892fd14d7ea59b847823e4b0c6ad
Date: Mon, 18 Apr 2022 21:49:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650318598

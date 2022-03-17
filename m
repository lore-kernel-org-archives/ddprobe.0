Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F2913D79
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 10:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647512484;
	h=To:Subject:From:Message-Id:Date;
	bh=my3JIYtHAnPB8wum9lGjXodw91znvdlNWw7uGBdxhYo=;
	b=SJkz/VxvVG2D/MvGQS+zTr6wUT0Rc6hsmGPeFMuaLpxNDxtFrEmbyaSGtCb7LfDc
	7rLO81g8Vi7/6sL1ODkIogdJ1HdlDRVzrwZUBzkD8C1BI4lp6BqOT3PZxSPMJfnx/W0
	Vw9/C4KekMsJ8Jz+2gmPiWPMhfPz75ngba5Ipdkg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647512484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=my3JIYtHAnPB8wum9lGjXodw91znvdlNWw7uGBdxhYo=;
	b=D7ObjpxWBBsoHn61Qe0vPQqookYnEErH9b/GR7n0yIhw5/N5fFcDpu5o9RgN+4+g
	KImFZus+BPkkfZm/2Gjv1ockDbvvp3WFYE6AXGjJM1KJtVZDT2azfEt61ekxUHtsKsj
	lxAklrVEFpLnt6nEAWoQ8UeSfHs/jo+ohRFDl0lo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f97657b9a-f1b6392c-d116-4831-8e69-6068865b7c68-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 99a17a76e184aa3fd2f53ef00226f71d4a79fbc3398d7aa0f383b9c82a59d1ba
Date: Thu, 17 Mar 2022 10:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647512484

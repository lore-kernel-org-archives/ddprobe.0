Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D1175115
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 18:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647628884;
	h=To:Subject:From:Message-Id:Date;
	bh=pGNT+XHPpeSO1jqa/sTT4qgkIlC2Xh/CbxWtitINKlI=;
	b=cZIoJOxndCA6DogrpozI2rIfx/lO/6NSx+JG604j0MK3K1Bj8Bo3PWpLU7lzI5d4
	tb4zjMR0/LGxZo7dSv9MaXPU+hAVEgGosBwu7gnrEeb4VZ9C0NjPyRmofUe2PM+breg
	tTMvgwPg6NIo9tj2D241FYs3/K6YhNOzsAVq6lg4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647628884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pGNT+XHPpeSO1jqa/sTT4qgkIlC2Xh/CbxWtitINKlI=;
	b=NJomRxPL8gnc5Nm0wHuIvW4pPg3vAX3RIENMW5bLDXyZzZObGCHLjjRIj4eXgGAD
	Kg0jrV1UOjsuzuJcZKb7Y9x4rWkuKhXy+CWIo7Z9MTXZM1WwEib7kB62MFUp2Q80QZm
	eOBj7AcJdA65kO3q6L7XrhmQOPp6WIpESAjVx1jE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9e559b6f-57d55ba6-91d1-4793-9f14-e29a1d231416-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a1aaffcecfb2785e71452e1c25cb337261c4ea53197755d2fa9babd996dfc908
Date: Fri, 18 Mar 2022 18:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647628884

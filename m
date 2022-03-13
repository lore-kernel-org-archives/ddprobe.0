Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C95AD2F44
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 20:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647201685;
	h=To:Subject:From:Message-Id:Date;
	bh=vXmKfRUSdZU+FOy6tZ39VO5GhMXjOSmdDVy8kOaa824=;
	b=YHYYAtz+55Ti2ZJSsQrxHrpf3ORrPzGWgePuaSvrxynndDhQMdDN4moUt10SdPJT
	ZPTZFFp+yrnucCq/bagCyignT9rpnpxHDB49xLvPb5VCW/VtaLQWFNKpiOaTaMewZB/
	CojuyJbDHlVBuoJn4taIx3M7BlFBA43glKuamTfI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647201685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vXmKfRUSdZU+FOy6tZ39VO5GhMXjOSmdDVy8kOaa824=;
	b=U76dBvcUOCRei5yeizWvg+jseG13uCn4aKrzqI5u0NduJM1Fy1zRX4j86DrsAsR4
	UMWVWlkcxxgZ7DDGXQR3X4YFkAhI1lYDgiZKm5mb8vymeJxHUyjmlqZEJwiH4xyWhje
	TSOORaXub67pU1olHyplQk2y8CGD6LLO64T2tQQA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f84df0d37-6333f699-d376-486e-afc0-66214ce73796-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c5c605e9df267d2a8a90bf33fbc1b56c772d789bdc2790739533ed79d425b4ce
Date: Sun, 13 Mar 2022 20:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647201684

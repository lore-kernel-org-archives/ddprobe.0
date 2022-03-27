Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35F013237
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 15:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648394698;
	h=To:Subject:From:Message-Id:Date;
	bh=H5vVnkteLrtuddjK9hXEeHhq7/0nwYrjusWPChsIO9o=;
	b=EqmO6wDhCKnw3R0fM29Xy7WY/hVOBe2lOMMwYKC5YyEYcQmh+jmMjkwERsIXY27m
	EXbKiNbxM9GjFq2WTWG5o/TcscLovucgVj4Zg8m/Hf4JEj0RTZK2/4QoFYN2RoryZYJ
	JNudUqWN5CqjyaTlXIJn0t9c2GK49nCI9/FG6k6s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648394698;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=H5vVnkteLrtuddjK9hXEeHhq7/0nwYrjusWPChsIO9o=;
	b=FbBWUxTk6XWV8nia6xhJsBSxJxbAP1eIpumQYLJ6eMgIf2jq8lfCYr7ddEXEVEGA
	secFITmNDO5yaJQLCGwctF98Up08DldLlArOfp0sDM0UqSR+MshBYTWfZgj6RwGtwWR
	2hutRez/Jft47gwq/7Foj1IXy4ktwrqCG7J/TgYY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcbfafe60-fe67aa36-bbe4-4344-a7b2-92a8946e50dd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 189dcaa0d684f05da267f3c728e59cad10635eda42446b91ae8e2a842842f0bd
Date: Sun, 27 Mar 2022 15:24:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648394698

Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B74C179
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 07:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645341385;
	h=To:Subject:From:Message-Id:Date;
	bh=Lcb6mlxSzn7TBwtBi+Gt28zQlQBtBBuzYbXjZ2KzdyE=;
	b=hZTGSll6uygExF7EtzPtg+4o5D9MLSWLCB9AYe1n6iBMD18TXMAa6gOmCeONIM3U
	xyzfMEQOPxYlPtoZRyMGsmQiy+y9z5owEWikpDK4AIAZBw5V5lCEAlsFF6wujwmznVz
	wg0ymGXXPMYSkaPb37iJi3YeEJnPWyOz8eUUT4Vg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645341385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Lcb6mlxSzn7TBwtBi+Gt28zQlQBtBBuzYbXjZ2KzdyE=;
	b=atrHs1hygpLWDwkWjQWRoii/q8t1RXMPcIi0+OF8Jn3DckQqtHrFUY61mKYLeLHx
	dOD6QzR5T1imJlw+6GSjFag4jM93D672l9HvO1Imv/NVwvEIUbwZVz/PqvgVKx1VnF4
	hXrkvLHMyaWBx+6j+J6jGBqEspWF92yvRQ8bO0LM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f15fd208a-4b88d62e-b75a-4c36-b6c4-a6f3c4559021-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1360be3fb31aa2740e95b6eff2bedee0f22daffdff346eb190367291e76e553d
Date: Sun, 20 Feb 2022 07:16:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645341384

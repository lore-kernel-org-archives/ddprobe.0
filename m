Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 623C029AD
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 10:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647773484;
	h=To:Subject:From:Message-Id:Date;
	bh=eBzbxgvW8Skg8LF+d+g950uiJZtqV08U7TuyA9e7ZdU=;
	b=FGEHAKK8m0n3SiuaL3sOxMp65s+1oupY6O9tsJ/WdukuuixmUWplRf5rZtTQNdrb
	TDIzmuiA1T9LPFv2jnF/1xzkpP7/uz+bEwDIgil5SaNhcyfkV/zEeKk2kKHpzu6n8C9
	MN1CZBIsUQM+E08JFPB9X5cmlm7/7neVNyVtFFzA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647773484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eBzbxgvW8Skg8LF+d+g950uiJZtqV08U7TuyA9e7ZdU=;
	b=Gf8hZW4un33DV8L6iWDmjjE3BmVF5xq1C4cXQ1kQbedtrpg8YSK8FzcqazR9Fy1z
	HsrcGauf5FRoi3PDZpIygRuPAoBAJQz0p+tIJQPBsXpwgjSzCfRWeSHLRw4Rb2/mkrw
	AzvBzszQzUPEgdn38TfZ/m1cRhNWN9meYYMkWwVo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa6f406b6-5b1d70c7-a85c-4257-8f61-7b65e65cc9ff-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9287a5ba24642681640dc63abde0632765733f9dfe158c1f333ea201536de541
Date: Sun, 20 Mar 2022 10:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647773484

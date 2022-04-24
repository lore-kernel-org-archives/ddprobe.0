Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A5117A
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 10:17:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650795478;
	h=To:Subject:From:Message-Id:Date;
	bh=d6E4UwLmJQmRP2THx3rz7HCOKChfWfGmYfkF/2bXS/g=;
	b=fOGHrhf17k9ImzdUOO7vHpNtNTFLO+YWEhRSi8uSV7GZobMeOsup9LY6eDSH6acM
	8sGkRofsYxJgOLxETWy9GHZ1cT3bt7TUC0tkZR52RBFQP2bpg1ScqNuB8OeDz02gnDH
	aQRljYtM9FiNtKZ+rN8ZTDoEwiM5aQEavVmQzdJU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650795478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=d6E4UwLmJQmRP2THx3rz7HCOKChfWfGmYfkF/2bXS/g=;
	b=d0ti56DasviFWK4PB4cabgz90g/VnuLp10pNrasMGpDuJsW5RuNQ/4NOHtEW4de+
	6/wAFt3ftWzSo7c0xNQaIi9Y9728iruf/bRAAvAS+CLglGDJcwRgcGne2+gHd5nNF2I
	udqtUybkARn1/uoBUJrciYDAf7nqFDqz6XfGXCxs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805b13fd04-d540c4db-a5f7-453c-a896-76b07f25aef6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4dc4e9b733904368acbd9d84db782d56699c97bbfea1c5248b9763bbc9e250f9
Date: Sun, 24 Apr 2022 10:17:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650795478

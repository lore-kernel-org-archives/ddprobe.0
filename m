Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8B302FAE
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 21:50:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648417858;
	h=To:Subject:From:Message-Id:Date;
	bh=ujHtWj1cwZpK574mByQ5IZL05PNq9UukTRV+N/8HWC4=;
	b=ZZSiGhZWuIOFAaMoNBUSnDf0ysAs1G8HASgSVow0E7cEN2NqP6u5eV9k1QcAy3nt
	6li2pZt4Hxq0x5Zv4n3r66z03qqaXu03bMqI1eDd59Ns5EJ1kUo77B195LcFldlkTdE
	9j2NdKDizqJfQgU/OgbAq32JjWXxGvA/s/fd6w+Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648417858;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ujHtWj1cwZpK574mByQ5IZL05PNq9UukTRV+N/8HWC4=;
	b=CKjoMnBweibhWdBzA+YSCDh85+MikUUTs+kPbO/DkS1EV3w7Zjz8Uvlp9M4C+yrY
	xOLs3cfYrNb77kVYwWNnY9Jbf0fwACH7d3JzbLiuULUAR3Xv3F1VGMW6MVjOKWLHCyj
	Iqso4eIaG9cfwPUUCPmJDTknMl8UotBJnmcxgTGQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcd5c62cf-8c6c25e6-b26f-4bc9-95bf-099d50586d4c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bab8f1dc5c7f8420b40d6a1fc220507c4a4e935cfff712c7649b945fad9407e3
Date: Sun, 27 Mar 2022 21:50:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648417858

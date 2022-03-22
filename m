Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD5257A
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 00:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647909685;
	h=To:Subject:From:Message-Id:Date;
	bh=N1ftzrNvQ/OuPBfaK+1jvHy8rzBalz17c5hoRIUBvps=;
	b=fCEHLlfWOUzqaUHXsvwrno4JADIlqJPdBUV8tODS8pnJiYkn7u58GdMs2QiJ9Kq9
	CMugh/zi8vq6EItRN9URWoVBbL8BLmVgEkhn4uBiVc8SqHTFbumpJlQ4eiULEn+xbk7
	msjkyu/3KXDt5Ok2tz8pLjv4w9A9BRHTCldAZVsA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647909685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=N1ftzrNvQ/OuPBfaK+1jvHy8rzBalz17c5hoRIUBvps=;
	b=IqhVUSgtWqJlObFFEb8ZKUt3/ahEO/ypSPPbJtCGp4vU1b7Lev/VvxSCFz/eaBu2
	E1LwTDEogTwKohSZz1xv4YJ1Or68ZOmCNwwAwwPOQmgXeAz2t1Eyc1WlVIF0Nr9et0/
	vVSizx7wmSTrxEDMu3cEihNIvk/taRImyXI23Ib0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faf12461e-78cc032f-b10f-4648-9075-1a79405b14d9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 38d3a2bff4f6f509d6f4e22f5025c2ee53b54dacdbecd1c10d0afb45ed20827e
Date: Tue, 22 Mar 2022 00:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647909684

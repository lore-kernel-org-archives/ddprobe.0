Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 032BE28E5
	for <ddprobe@lists.linux.dev>; Tue,  5 Apr 2022 12:55:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649163358;
	h=To:Subject:From:Message-Id:Date;
	bh=vwh4UZum+5zEG0WI34iYFkPnIwCEE8tsbHAR3e/3Ycc=;
	b=iBPcAR2rgWggN+YhU4p3C9yH8AzgW14H85gckE6yA8PWtUNZZ+vlM4sNsV8bgInj
	39sWRYP7I6Gp2WDnSzkmxmuCV2BelwzrIStX0oj01oqZ1BJcwFvgQsfpaX/rWxNfJLH
	34Lf3gXh76cXxyAzv+sU23NPZCXB1zbE6x5QF0ls=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649163358;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vwh4UZum+5zEG0WI34iYFkPnIwCEE8tsbHAR3e/3Ycc=;
	b=DA2nTAbtIz80z4DZkd98VYQLXZfBQCPePSGKwVZk5kWeOmFBMTIHmk/ArMsXibnQ
	7QcqjnLdeCERhNpNGCaLg5/scXkx0YVKjS874TQTUHnGgFchM48id8a6+eqPN29+EAH
	cgGu902xLrID+YA6v+P2AHPzWu8QEKt3iwbIoSBk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff9cbd05b-15ba0857-6e3a-4691-8e69-5c84e5f0121f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 413d023310127c9ea731d612ba2816eb707488ec9d622e8635c43a81b9174e9e
Date: Tue, 5 Apr 2022 12:55:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.05-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649163358

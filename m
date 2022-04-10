Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D5A1EA9
	for <ddprobe@lists.linux.dev>; Sun, 10 Apr 2022 06:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649571959;
	h=To:Subject:From:Message-Id:Date;
	bh=GxZhyGQwz88un9IN5EPCBsXuieAOiuKUCvDcwzPwlSY=;
	b=CMD2/ysmWlXMx2srpDXbilDNyDdadoIAfMI9XyW+scNL8b+viCpBSiAXWmcBnOW/
	z1myrXxvmQlTrH9Pzoz8n1n8R356UUeKZkva5m9+ExryWUoHlE1OviT4S86tfwPuW3C
	ZZ6nyuFQBxLaMfGZWKwQv0dM6JOrnbq04HvIBXaU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649571959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GxZhyGQwz88un9IN5EPCBsXuieAOiuKUCvDcwzPwlSY=;
	b=MQf9JUWG3urpY6b69u/LuFT8UsxfQPNCDT1f5P1tG/oUsaCrTlhVB82Z97+jnb9R
	zAsrvm9A0fa4T31Zl40mootDnSel1/NiUfeCyIUfWDdXGWimyjWATDww9CHAR8MytMd
	L2Qmi3cU/3d0Kg0i21dpeMnrzklgrxWR5b8ygI+s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018012268e12-7eccdc17-db0a-4b5a-9fa3-f1d35fe086d4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9d92d2865121ff998fd03fce2fd0c3228a105380d0943990c0e3dc4d35f318a9
Date: Sun, 10 Apr 2022 06:25:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.10-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649571958

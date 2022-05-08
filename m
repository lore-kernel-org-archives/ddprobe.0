Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A3097E
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 12:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652012938;
	h=To:Subject:From:Message-Id:Date;
	bh=rurk73L6orZpe/WcBlMqgVqg9/PWHEEOGB9cV0oGmjY=;
	b=TdHanWZtr0nvDC4CnB0G24GsqP9aA+z5SEv2xxvjZ8kLVNtm2ITH7anhjzu1zcK7
	pxa+zqW6hEsQ0wG7jKGJLzi2Uv6DY0NMoPkzQZp5Y2MTcnGoAH3NkF9QMx3WUVms5/m
	2NyNQr6GxtiDuBWBLbPb7nZHfDRoDqzYJPhKVMgI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652012938;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rurk73L6orZpe/WcBlMqgVqg9/PWHEEOGB9cV0oGmjY=;
	b=R4OS2twOIRExI+ShvBfDAN3JmanXtTMtikRTm5M2W96c+00OL9NQkA71900FmiSr
	iKdsuzj25DH+qITv+rYXtGWz7rMU/LRwxTKdYlaNhv0xNPIAoz5kHw/WfJKv4QBnqu8
	hWjdu99MIVfEb4ski/VCsGpvm+1D78bYTNeUExIg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a3a4f43f-e757301c-2494-449a-8911-958e2bc3efd3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 31166a28f5817222a94a2a7e594d22a23ca2f0e3a350bdc354a43c4bc7b22e5a
Date: Sun, 8 May 2022 12:28:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652012938

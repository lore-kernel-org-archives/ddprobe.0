Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5944F290C
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 12:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660912852;
	h=To:Subject:From:Message-Id:Date;
	bh=6pvRes12FjAFByYhlMMv5AVHEYxE8/Tc8ccx8smw9YE=;
	b=Sv8kpxESV+EsWZYDYcXhgXu/91ZT+QCL3TWpGPh/ygA16uIqOQJRyGYoyX5bixlu
	ZiGIlL31kHgD5EsVme8y13DATpKOJ9jnUkz2RS2sug/7QbHWuk8SDJ2xpoUdv5X2umO
	m+Ua8OdMKC2R9TL31FWo+PA2B2PdVEhgN7Hwbx2w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660912852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6pvRes12FjAFByYhlMMv5AVHEYxE8/Tc8ccx8smw9YE=;
	b=ZzALQwrpDHcBSvCmZo2/W3MMdmuBwfgN5odTZoiUB8j0UWL9rRTM9nu8pbbiVjvU
	7USVREo2WvZWxE66f7CH+Mmj8w/Vu5iEnEcyjbx739vgrRY6eRpl6oRxXi1VSKVtnnc
	3Vam5dUxMho0oDK1ikPJKVrb8lfCCfieursrJnKs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b61ede56-38404082-2620-4d68-beb7-a955558f2bc5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 48e1423906cb88e8ccd7204d251b53c54036630fca2366f15ef4a3fdb570396a
Date: Fri, 19 Aug 2022 12:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660912852

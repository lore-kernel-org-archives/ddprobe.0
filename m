Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04F787B
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 01:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658279812;
	h=To:Subject:From:Message-Id:Date;
	bh=MFBhZI3KIblxEMMN4rOWM9wMcnUtpjMIXJleaFKgxtc=;
	b=UrUh8lNMkF61ZKrq2OGKsZx/8IVqXEn43y6MBw8wb1IaPTTNRfNfu5xq6e8P1HJN
	zyfpVhVytluFXzVSbNJhguJYf2PDBou9ZuH1Qmjavkix6lOfPdZvsh3IKW1e94/D6g+
	Kmq9FOGTVqnjIeUBnX/EXSbtxhGrr11+SjMfW2iQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658279812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MFBhZI3KIblxEMMN4rOWM9wMcnUtpjMIXJleaFKgxtc=;
	b=XJj3W0gPptawF5o2JsVc2H3arlnO5HR2O+h1Ttcxb5F1pSnqwbj+5UG8cKWk5gpk
	E7m6ezasqDhpUL3KcqZjFGL+MoRW1VVmny2JuiO3hXzHfgyUZg3AIlt/Wt1wwIJ1SRC
	/9wyx2Gh9aoiumjv7wd2W9ga2vZl2NP75tx6b7MI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182192ddcad-4b27f60e-2e5e-47b8-bbe5-306e0fd98c82-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 891a36d07ab6901b7735b650069bb5c48a415d2e683f4a26a4fab6506b7ca300
Date: Wed, 20 Jul 2022 01:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658279812

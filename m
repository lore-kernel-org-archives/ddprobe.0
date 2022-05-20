Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A06E15AA
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 03:49:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653018539;
	h=To:Subject:From:Message-Id:Date;
	bh=GqUGZkomvK2QJ1tIdSr48j3tETvRYeAenq3JSsWop0s=;
	b=Zmpnm/k2VvMK1j4srI+coSoTvfjOgDXXmMEj53zkz5j1D29NlsMk55fQeBvvBUAu
	060iF9AEC/I29+O83SzWcBwQ2K7emFbuY9LLckoAsm1O98e/afeQl8ZCWWL1d1L8hrw
	gB5c/xmEXYJbGuHjdQwFPfPWggoMuAmdo4FAaih0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653018539;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GqUGZkomvK2QJ1tIdSr48j3tETvRYeAenq3JSsWop0s=;
	b=XGOdc61q+57UA2uYKPazCkaL6OjLA1lP3B3Qyx3jUZ0QpueOkpXjot4byURoAlYk
	Lx+B6CCIBaBHbWdKlivhKULxL+XzC0FvnJ1nGFbpmnfeYA6upUYGWeLGTXu+69HWRRd
	CGw0gRrviqP7GXd1cS+ylpMoXc55d/hRyoiMa7Lk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180df9534f9-e6973516-25ce-46af-b9ab-36a94b16dd5e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5a3541cd454611e27760a03bab7a1c13f25fec2e1981f9f26d797555f1e7cf3a
Date: Fri, 20 May 2022 03:48:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653018539

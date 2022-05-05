Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 046D7625
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 09:06:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651741618;
	h=To:Subject:From:Message-Id:Date;
	bh=pB/Qcoys69Mxkk0EC09sx4r36p/NfAqB2SNYWcuhfgw=;
	b=HPs8+XVcqCH2JvtNI/2t+a8bXtrihEb+HgCHQ0y0oem4v5h8HMC7uabW9Ll9LpnO
	64F8r+SGZyIaov6mlMGZlJqrTc8eOgRBYuLl2eRhXeNe5Qn/scVDjdFQtmC1S4NsO6n
	PFq+qHoaXB7zyuuKRlxat0CM11F+siSD5YSc8vKU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651741618;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pB/Qcoys69Mxkk0EC09sx4r36p/NfAqB2SNYWcuhfgw=;
	b=WbltfGO2WgcOpC65S1ydpDE3QQZpRIY8YLxZmJp+wsckV+ItmtEcQWxP3ecfIQEs
	UUyVeJDf8uBTBLP01pio0zNBHeyvy0bfSTVD88o3VuWPQ2RRCOBdWYe25oBTDl472a0
	Jl3++nJ0pPr4HcgpSK5VhPrksThwJ4kDvxxfn4ko=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809378f0a2-94ed48da-8d27-4db9-b0a1-e774f79d7f44-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a239ea92d5030808da00e3f79ea86c73a7dbbfa68f348ea3d304df5622649ade
Date: Thu, 5 May 2022 09:06:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651741618

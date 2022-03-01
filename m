Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 740AC17E
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 09:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646125585;
	h=To:Subject:From:Message-Id:Date;
	bh=L8Eyx+Q/RZbYHQ/OApePMXyOVAIouCSL/APSFulwPvA=;
	b=gKi2X70mEVu6AD8QbkRRT9rd0bnTxtTPHumkpo92KKY+jRG9yGICJmmhU8pUBBp0
	KoCiAsdvQIynYbU7xoBE4I5j6iyLcOxGx48oGI02H0fMv0Ty4CYufzwNpBUDP+8ynIv
	hIJRbLTzqia3ZVDdJAzt4mB6dpvs5op9p9a8Xezw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646125584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=L8Eyx+Q/RZbYHQ/OApePMXyOVAIouCSL/APSFulwPvA=;
	b=YxBR3SQPC+YFu7NuYZceVlidRL7hRZWf+r32yVA0JV1tyRsPPz4KTQ72S+V0B0TI
	Q71ImP0aNiyQ6a/iBCOHJn/1hVrKowHEDliwDfrZLekkhy2i5gcZtchE/LBjOGu/Tlz
	OeFCl+IQcw01OsQd/b95nlcdYwSgxXPcfhcp1gJY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f44bb118d-f94c5387-89d2-4587-a952-08fa82989d5d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4aedf2f15d34f1f026a33876f9b4a380b3b7e42de1febcb2c4ab3291d8ee88b9
Date: Tue, 1 Mar 2022 09:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646125584

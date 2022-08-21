Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54B1E36D
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 04:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661055052;
	h=To:Subject:From:Message-Id:Date;
	bh=YtKDpy81nGvqukeFg8StRn6OW5s+kpXx81QnC/CMZGY=;
	b=Iu9t7YMx3ztBlkJDWz4doRuqVk9JxFOYuPWRsI4+L0ZfcpIH676KACmy16+djG3v
	KruWeo0dp1O8diXpoOPfePCHsPwGu7A6wucl/nSbkU/H4L18kyi6InpkBZbZkKzoLcJ
	XHL9KG5iA6mZxV06rDrz1B5Kyv0zsxm12Sl5HTNo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661055052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YtKDpy81nGvqukeFg8StRn6OW5s+kpXx81QnC/CMZGY=;
	b=c/E7H40JfZ2a95gH9EhjwA43jud2Dk307Aq0ZtPl4763VbPVorBuDgHxM1r69UrI
	Rj6uoN8xOliYq9F/h4MNuwfHE6OfunjHYERUxVUTG1miQod7cR9z1Z1HtWusxXVtcMp
	HmRK1iPoOAG7ObLpCgKS/26cObjqMqXJCmfpO9TE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182be98ab14-ca56ca8d-5bec-4464-a629-52d6f24930de-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4214e6ec1740055938ac2aed0b11c495a50c789e0b7d7fe5950ff100de97dfd0
Date: Sun, 21 Aug 2022 04:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661055052

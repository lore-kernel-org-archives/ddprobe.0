Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF7E810FA
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 05:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658208412;
	h=To:Subject:From:Message-Id:Date;
	bh=eYgek/kQjdRBYQuVRWkz+Zt2sOckGJWhnXvIXgOFHQ4=;
	b=Rr4QuGiU/99u380bBe3xe6mHscwXIW7dz9DWIqwzIzYrzzupflXgnNv4iPIod6u8
	IJ1Cjb13xUNzJ3wQXuom/VwyTygoDjSbhugS+bo1QCV+/reS/V8ioDIjej4X7dHnxDy
	QdSnR++JxC489Jp76vB8usYQmL2MIoicCznB5UqE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658208412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eYgek/kQjdRBYQuVRWkz+Zt2sOckGJWhnXvIXgOFHQ4=;
	b=RvRyV9NFr20DEP40Q0CfWQgT7K28tj1egu1uZNO2stuI0MBBi2qzJ253lcQ2A8nL
	EGdHAxWNmYvcTmOfVJ8WEzMU37xyKMTrlPk1EOUBrJokFzvRJ03TypXSIsO82V10MFo
	xhIzjKZo1pYpymEVU+LRmjcUN2TE3xwAIyB858cI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018214ec6286-0c615ed5-327c-431e-b412-a4c3dd4af212-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 41dfdf83286b02b44bddd065dd3cd3d9e58f0e3a732412b44d610c72afe58af5
Date: Tue, 19 Jul 2022 05:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658208412

Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 639AF802
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 06:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647929184;
	h=To:Subject:From:Message-Id:Date;
	bh=4j7+ixyisxOxOrV3H6JQrsC9fblAoVcoZFCZbiC9lOo=;
	b=NO+WGSW0JDUtEYeR0nR8yXNPAStg6VzuXD7fD6LN2NHfAGiC3MA1+Yv6QpO8RxCH
	a9uMENtA+9/pgcEMMvAdaGx1J+suMuAXWvK8vCISAKwzns5KhNiNAWOtxsnaF6/KSaJ
	PNA5wQIMUxZ3r1dmjXl5rjIEWbdtAT6n36/vG2ak=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647929184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4j7+ixyisxOxOrV3H6JQrsC9fblAoVcoZFCZbiC9lOo=;
	b=hGx2fhAB6FALpKt3DMuOwinvKrM0fW71bpNsxZS+VwQ5qDUvCQuf/P7uR0wWJwOv
	6KHwH28/Tj8v4WUeDlrFUrZKQ+p2MrcPhnIH5PxS3z4AHAx4G9Wh22oAwXqhzMPiIsM
	GyDVtGhshAy7uh9LLBleGis/LHj1Ro+sP5IwUl2U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb03bd200-bbe26879-8465-43f1-9190-f7ac53352ada-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 04c87c0e30b5d549a455b5b945a2be68279dd50f9bff04609bb050df887f1041
Date: Tue, 22 Mar 2022 06:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647929184

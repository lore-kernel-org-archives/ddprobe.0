Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB11C3D63
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 20:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652646419;
	h=To:Subject:From:Message-Id:Date;
	bh=DW+Q0JCmj+zFCzJMzAwHKTlksXV41Oj/6jBy0f4+bmU=;
	b=VLMImRyCOJCzgNTzN3nVHN6HzHyB2IwTwpb8S254IQbIhpbrKaCua+C21FDck6vK
	1Ap0T0HcxgUp0IHwDYwp1RvTlzPbZTngClPloo13eVNMmeydTSzwqYo5eKqImZQ/0JB
	SXJr9cvPPJ++4PJgXax5H6UMqnlP06Ksm9TsCuv0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652646419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DW+Q0JCmj+zFCzJMzAwHKTlksXV41Oj/6jBy0f4+bmU=;
	b=Op0UuXbU+sMs+wfHe0UhK7FpoaxjVO3c/cX3fBrvciB68khyjSZ8bLDf61EI2luv
	VzClvatAJm8YWVFLBi68WbDMtUcDF6or1oTHS/jJ/9J6mWOU7C+Xt8SAB/wdZxayBk6
	A75aDmPD2W52lZIWlL6qSJ5iSAUF5xjGD2SQ6ZRM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c9671b5b-6f1e7aca-6e70-4af1-884e-81e0faa0ed1b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 62f40abc7a27b69977ab769ba0c25dc65442d963d4bd860932081bef453b3178
Date: Sun, 15 May 2022 20:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652646419

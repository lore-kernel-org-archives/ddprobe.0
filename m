Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2893D23A1
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 05:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656047212;
	h=To:Subject:From:Message-Id:Date;
	bh=QDDZlRL0jT7G3mTrPpK4bDMMRTWAFxcesCTmKSQbv8g=;
	b=QXyEJ9fqSjS/ttMjpZ7619px0japITnUx7zZjStib9AX/V+Pn9gGJ/+rlvPrgCJ3
	mdQn/v2axHg7gFseKvDRm9sV03zOptGNoq61vR1QLPMm9C+mlgGdfFQ7XeSWaXVgD2i
	T3Ikw68MrrA+PM+RlvdSMRxJe4rsOeZt262i5I+E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656047212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QDDZlRL0jT7G3mTrPpK4bDMMRTWAFxcesCTmKSQbv8g=;
	b=HIQG1IiZ7sD00+lSMoGkctW7KkHYNgbRFgsF3KPIatf2g2ObbG/nIQuKValPHgqj
	hRB0nDMTf7y15mM/CyOoFeAlwsT3O3QVqFb7ABKPWvQA2yQYUWjJtplgutkX6mpg8LX
	f1P6vhJCv70fbyor6jJT3a5Dsr4L6tfEYYRc7PBk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181941b16e5-4016ea0c-7ca5-4bff-862a-64e5634e84b6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b6c85832e2d0f098bec0045f8491c88897d644985484c4fb764c0ad31a2547eb
Date: Fri, 24 Jun 2022 05:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656047212

Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ABFB4699
	for <ddprobe@lists.linux.dev>; Thu, 21 Apr 2022 04:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650514258;
	h=To:Subject:From:Message-Id:Date;
	bh=V4gmE6THXWnOifXwo1rSXT2OVTkX6HPzAynTvreECss=;
	b=SiE6U1+cec5AXrN8itJxVsXD8YX3feZKRC+kYegm868b/Q4z/Ng0G0u1YivpD1L4
	TBOR/xI3ITzhTNl3rHWsr6vThu8YoDe59XAMvt1AhOHd4tA1xq9+PDSRu85wCGPkRjm
	u7LXfSAbK0TvO5iXtEd1rla+cuMt1pXiup9Qw6n4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650514258;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=V4gmE6THXWnOifXwo1rSXT2OVTkX6HPzAynTvreECss=;
	b=Ey8Zo3WPc3yHKbTHqDrmatKjwetKHv1DeiaWyRhMa22j1jJ8bz8IVlhea/DmqCOm
	OMmMsJoY9cGrvtto8T6g1TO88YHpmzQEEjN/Taow1Qlb792ivFeHpnExBxasM9JSZ4c
	EYwf3bdH/ZKr/QaEb0JZkTVszKZ0/2nB2A0rzxws=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804a50e969-0d756965-5b59-49e1-b1b3-38a8607a02ad-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 713630ddc15ced0f99c2f4ae99c5d66b3e26c48a33f74b3b47c50113c9022d74
Date: Thu, 21 Apr 2022 04:10:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650514258

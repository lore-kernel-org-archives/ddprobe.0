Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FBBE7E
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 14:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652970059;
	h=To:Subject:From:Message-Id:Date;
	bh=1LujKmEfYthgXq/950Ll85KdH2VpRP4UHtj+iYFfQnc=;
	b=aqT4IBqcO0mx+KHY7xNFyPcdMoBYFulvGI2WQ/tZumS36QWfRMm2o5VaPcBcPxfR
	B+MRM4sJj8jdbxqeGi3B6c+KPV9ZJXhuSYtRMsUWB9X43PrbxH1L0yZGUPU5OMga/6Z
	wHY+nhkFooZXOI9m1yMGeNMOzUjTuy5QQb8pfKc0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652970059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1LujKmEfYthgXq/950Ll85KdH2VpRP4UHtj+iYFfQnc=;
	b=Skts99yqQleXkf/Pjv9k66a+ZgApNAx5O4EU9TjskhCHzV72OyrV5brN4NoWajLZ
	TxBOOaKreDNlS3YkfBHpMdummRVAMNUsv3pTGw5RIKJHngb2ALLbUKfUrIw0ugn/SU7
	raflVDmxJK6KgpNLs28UGyGS7VYaxdeKqJBFBM0Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180dcb17618-54bbf9c0-fc30-4274-bfa4-54f336068d06-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a7bade14572813c0f15a5418e108aa2ba89bb9f1f3413ebb83d47011152246ca
Date: Thu, 19 May 2022 14:20:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652970059

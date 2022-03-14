Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77639C62
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 00:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647217884;
	h=To:Subject:From:Message-Id:Date;
	bh=G2I87XQI+VTNcmEtQpkovxX6NJWmkAIRyvsqXmBup3Y=;
	b=N7/bEx55kTDHbVChk6pNYT379j1nX5ze/2u6KhXDIuyOE4QCwWzgSwMgH5IbPgT9
	f1Y2sOPyUP7Y+iLkLAB9Y7+sHVsRRo9LLy1cyUQamYw9Jo+MzYxmbxTWTcakNOrU6le
	hlRtF71x7Fm3BsOu4IltWW1u5ZWeFuswpsqqHNJU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647217884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=G2I87XQI+VTNcmEtQpkovxX6NJWmkAIRyvsqXmBup3Y=;
	b=I8BILnjdLYFcqu87PSJjFPVG1FKu8nL7Mtl6205QfZwryqQyzE1fbctbAovDh5oB
	IeT4nFixJ9KlXtmLqNMHA9R/IaEgBv9tlT1LP6owGPZq2MKYp+eRnQtFyX0qhrc3Ain
	F/590UwJt9gZhCn5TJl1UN9JJiXEPz3t8ySRoIww=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f85d63e4c-5b48685b-ea81-4e54-9637-6ae771c7b3bc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ace2a3eb82d0644593ef374940eb89419793f632b50fb2ddb7d9331360f545b7
Date: Mon, 14 Mar 2022 00:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647217884

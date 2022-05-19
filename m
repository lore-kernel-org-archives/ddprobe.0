Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AD882904
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 17:17:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652980619;
	h=To:Subject:From:Message-Id:Date;
	bh=fyaKHcFOUVMSGSqx193toaxEFOd+qcA5xnZkNZpAO6U=;
	b=PfnW2cUAR/nCbfFADFMXhEdFzWAbfpJX6V4xd10dgduQNYy34B6+Rt+BjJ/qy8Ok
	lqO3eVy3XXVpTi9kCMo9jp5BR4RZLN5spgvgFmRdZYI/P5BsxVavDI3UigD2AnUEq5M
	5q7880ckZvoI+Prry1PXDZziNsIP+aCNtqVfT1GA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652980619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fyaKHcFOUVMSGSqx193toaxEFOd+qcA5xnZkNZpAO6U=;
	b=MK5irPr6TyfCpD3yRbRaCJjKW0WQN3u1YADE0cIdSBrggRzzBa80kZ2OjfFkrWpB
	a8H0ncsIQ0JFT7pHzHiE+KWv8MkWb5bHZF7B8psWfheWpGBM/jbK82Es5Hh7w0nmm3q
	xCKVkzW1G+JEd14dR4lFjEO7DX7tb92s+kXB3JSE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180dd529821-bcc51d79-361c-428b-a6d1-f171dd5ebc13-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ee82ad0ddb1e995eb1a5ee4ad0aaf3a5c17dea131bac7e781d2454a88b106219
Date: Thu, 19 May 2022 17:16:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652980619

Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC01928E2
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 20:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645302385;
	h=To:Subject:From:Message-Id:Date;
	bh=0z4MqyEKvCES87BtCRpTlF51b8PQM+RKwLtYnQMqOyA=;
	b=GgNqE6cf8gjG1UNlTzREpCcDbg57zu6uFHA41IdkuJTP4/K/iSyveVqHASTwqvqo
	Vkh0wXZ7itpF0AZltMxl5Lp9GfhIu3zf9q6QKBlhdwBOCcXagpAqaS0gRGWZrn6RZfL
	zSCS8vCMym4PQIbDpFVMDKJGpEV8GaHN5Pw/ysqw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645302385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0z4MqyEKvCES87BtCRpTlF51b8PQM+RKwLtYnQMqOyA=;
	b=gSGqzTTXhTbo5U2yaZVf4DyHIJH6CXVRgFUyUygMzM/XVigrCI4ToZ1Jb4e7ltkt
	hoWnQ8zbHgVsxuiBVqtSjQAvRQKr3SSL1a9sTzEUhwt+2va7fnSzR70vf6FTB3lxJIZ
	MPS6oXZKYZS574ukHX3XH6JNfh4vHn+g9rF7ikz4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f13aa084a-de67bb42-805e-49d9-8290-c0404c2a56c7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dcc31adea9a300555a5325b6d9e7fc91ffb5e0c53288df75b74058c435cd0fe4
Date: Sat, 19 Feb 2022 20:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645302384

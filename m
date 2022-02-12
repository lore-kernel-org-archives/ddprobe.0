Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2774B29B4
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 22:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644706253;
	h=To:Subject:From:Message-Id:Date;
	bh=6wRQ14CedwrDHvnWEdlpDClCt5bjOMxIJXixG8q2Nrw=;
	b=VflG7dmzbjCPLLJyjQZOhU+XXFM+60JU6O1nVXZKl5gaY6hC0zl8exPUH0pOk/ye
	zmHmpsnIRkto1kWi2gdIvhhOEQKKkhlWNvGdyFkuAGh72wNHu/4Ix7SjLci9NiLOl3K
	+H5TLAwdQYTevBHQTxYWVmUUTZATcY5z8yORKdGM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644706253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6wRQ14CedwrDHvnWEdlpDClCt5bjOMxIJXixG8q2Nrw=;
	b=IDfjOhUprczP72P55u00+/wNE0mxT796cP4m0TJvCNPyG82Oi/fxta2U+BLETY6J
	99KM5vXT+pqMvAo+s+PlC8ZUdmQFuvjhXNQEZfSH6hFBWZast3RC5O8+geazNo3Z/cx
	l5E3DuK/38zWCB+6TyjjFVVOVe5RdMIqfzuDoRmw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef021c8a3-29cda330-2a67-4237-a8d8-4cb3e3eda0d1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3cb9470f672fbe30f0200a4e511b21f78ef37347cef849434f9637da0e7b3f68
Date: Sat, 12 Feb 2022 22:50:53 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644706252

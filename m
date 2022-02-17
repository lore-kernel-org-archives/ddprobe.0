Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 659AC434A
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 15:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645112784;
	h=To:Subject:From:Message-Id:Date;
	bh=dCBw7LXPlgecZSdjwy4cmnxGsPPEUCePahxTA8DGW9Y=;
	b=FR3tAvR44b1KeJNRkPlK10zpCnZR9/B2kz8ijpWKxZ+c6xvpzOOXAayYhEdhO1JY
	VCgQ1SI/m9eEuPu5msPLE8qlyyD3ag9ebyOHhqJHQHvQFAAoZGs/9yW1PmANcf/8dji
	G78/noDmuPzgyApiavnn/G2NU4pe1g9IrjGLxBZA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645112784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dCBw7LXPlgecZSdjwy4cmnxGsPPEUCePahxTA8DGW9Y=;
	b=RvGKwL0PdQ8edVH2yaW2OcEAX2hF1fAWTTyvx+rR+1wpXsSclLrl6mNkW00qAtTU
	rdkDVB+puChDhvOUvH62QsIoOapt/5ue6i/PFp7zu1L62YsMsYRyO619O1lSn0t2Qmi
	FdnD9EndX4L56EtDXcMcJZbrl431vlMYBWeAj1EI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f085cf795-3d016c4c-9e9f-4b8c-b1fe-4dbce28b35ac-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 623804fb724f0881807ba66ee6c55ee1be1f5be66bc012fd1f7898fa78aa9f01
Date: Thu, 17 Feb 2022 15:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645112784

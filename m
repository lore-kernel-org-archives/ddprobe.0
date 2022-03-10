Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B639518D
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 17:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646933185;
	h=To:Subject:From:Message-Id:Date;
	bh=w9MgEUqkoTyjQ9RYY/fibIL4+Bm1ThLtoKoc2RKyph4=;
	b=CPvhNGT+/nOWVyRZ3oEfc3iPpDPwp5r8MS0psZjZWekVi8XSxutChQ5yCLHiC7PG
	Y86ascK9st0TVH3VLDX2Fwfwhi11hDypZeHPC+LIjzD7mVgaYRi6CPTUJTZy3Uu3cYw
	Ghukk0uhAZhdLCYFdHepSKvcwk0/QAW7f+lKv6r4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646933185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=w9MgEUqkoTyjQ9RYY/fibIL4+Bm1ThLtoKoc2RKyph4=;
	b=CA32fjT4TGLxlQ7wTcAYa+CSu70lxeADZPDgZnFBJSx5bpNM5dunDksa02Ebkehn
	5LG2yu+qoZuA2pmr57GKGhITOKp+eXXH/QANUYnx8L3x1UeeMmHCXEWDfnZOLtJdJAm
	fefP1cxLYBsqZu8kGxdB0NFuX6D8zHp9kBxnpglI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f74de110f-88aabba4-5951-42b9-b4ba-b8279ec77ac7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ede296077175a85034444292330cd64a3b14fa1a6b907a7ee9467189d600ac42
Date: Thu, 10 Mar 2022 17:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646933184

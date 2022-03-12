Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7AB92F50
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 09:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647077184;
	h=To:Subject:From:Message-Id:Date;
	bh=04dcisAYX+lXl3bxDq6v99W0Smn+mU69LBPeYwVVPx8=;
	b=aU5C4EUp7Q13Ph8nrRG+D5TTk1W5hWoiZxOgUtA4bH9azIHPDd4QuH4JIOvbCDDq
	tgFf1CVZvyXOQvISXQcZ5WbVmAmYTHYy8Dxx/cxjXQmd/f51i5oyS+LFcqBMVKV6bRb
	rgOaOaIQgY6sIFjXI4eZYSXH9f/8H8dboWZsZEJ8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647077184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=04dcisAYX+lXl3bxDq6v99W0Smn+mU69LBPeYwVVPx8=;
	b=NjpLm6Lx8S7hQi/91OqXv1Pxhwa9z0aBPrm4a1q1g6huSWbv5pir5Ye8ft+DLFN3
	+jSrd73CIUqseTKKpJm6mBxHExPUcrb7/JEoYyaLVk3lQR6GH4QBCPc/ivSCuUgLGYp
	DBMTGgxTJ9G3kSpqRy8fu4v1MKjmum84UPCWgAiU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7d7354e4-bee0b150-5698-42a5-a0b5-de2b2b9e15fb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0be4127669a1379acf2bab8e4cc1d6c2c6f0096982c34b88a81575796563cf95
Date: Sat, 12 Mar 2022 09:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647077184

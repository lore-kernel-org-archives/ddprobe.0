Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC53E38C9
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 08:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646641285;
	h=To:Subject:From:Message-Id:Date;
	bh=6+rk1ERLZG9DlUssw9/W88dGx2+CQSEbrphBhYLPyDU=;
	b=DuctJ8pSvIkcnoC87q3rX3H7T4zCpDYqHSPYqfti87Nx63TrMPxGCOjlrnn/7cGI
	cRGxLUi6qtf2Bw3ENoTrCxMqZtpQySA4E0J+rfRUXZPX4V4l+hv4t1RugdpjQuIr4+L
	HSI0MBIgQxIrXCgCcNu7r+FC4XtbJMwhenvYLJjQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646641285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6+rk1ERLZG9DlUssw9/W88dGx2+CQSEbrphBhYLPyDU=;
	b=DlM1hiSpc3wjTrigc0pMaV4dksK6kxogPwXfRZ1roLD+JPtkHF5gHQp6F6hgUEFV
	bWtKYBgmmf23B+JYrOSwHNktXvAP7QAxNShrgeWFTRnjHjbGDDpXHE8cOK/7UxKcvIs
	FcsaSRJesE7zRY+FWXkgiUUpyJ0qypatMWrzh00A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6378068b-663a2907-f315-4dde-b52b-67f506688efd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c2e4bedd8b708b46488be9a10124dcbfcc8c38da49d59484e7d4552297994140
Date: Mon, 7 Mar 2022 08:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646641284

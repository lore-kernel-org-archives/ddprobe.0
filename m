Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7029E17CA
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 18:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650047518;
	h=To:Subject:From:Message-Id:Date;
	bh=NJtiWYwhNhG5NDoMYiXvyP0L0h7+AOws0UrXjffWSR4=;
	b=kQ7TXq3i2+4bQhufNwO0dymHiUCICFNonBF7nKUvUkp+HQDcZP0z1Y2OzVFHS916
	FDmh7M5WAhxirKy59OkOK6ixXgsBbR4I9EIahq+Cb1aJX+zX9K3WGUQmPSjcSpOc91M
	HjFPSqqOmvmvRQDXIdRa6g2W9P7XyoB3i6GwSfx0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650047518;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NJtiWYwhNhG5NDoMYiXvyP0L0h7+AOws0UrXjffWSR4=;
	b=gJF0WBZgEySXr1qv8e7Z+idkbMH7JlQJZrI8KlhADfjcoHkNvUzq0CDZ/dzHMRxm
	UwciYB/y31ctE51aTzdbYd3pa+U+IdFEp2XSB7unFaUcAmStU7/k5bMj9AZCN8J0MBZ
	+/oPZBTTUMGNOT6+MqPVpLF/izoyN8baD4GBS2DI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802e7f063a-0619a86f-2dd2-46f5-ad22-7e42d93d54e9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 296e617efcc48fecd7f6186a65194deb942fd9123918cbe61492b0d300cac69a
Date: Fri, 15 Apr 2022 18:31:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650047518

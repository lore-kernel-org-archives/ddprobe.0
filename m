Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A39E2C7C
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 16:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646410585;
	h=To:Subject:From:Message-Id:Date;
	bh=wuwdgTCbp2KN95LpueCGzb9kxd3+//J+lCgVBwIA7V4=;
	b=EftBlT5G8FZru4xLc9glKNjlr2Oo80aRGSCNTm/wwxNsuZYwdleZh5wH+tpIeKt+
	UK3L7l0QCH5wsT1qKwp1v3h4i0hBiV4qeALq5fjK/3orVL4WWf2fCkiQictXhJjir1X
	0YVsd4iDwxh1CmSAS2+eRIaHObLavHV6Yi6g0Vt4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646410585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wuwdgTCbp2KN95LpueCGzb9kxd3+//J+lCgVBwIA7V4=;
	b=bmxQR6bMagY679zbcpivsymYJBgYrpaOyVsckz8gRS9AHbVU4d36v4Zh2p2ogLvy
	7GksOqA4M/ARZQczLWmW9nNzpwT4urp1MXW7d2SGC7HAUiBf8qwsGm7kWCYNNay4fIU
	H8/a8NTi9U9wg7cQKp7R1ALJTGA5IbsdvExcgg3I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f55b7d2d1-95672c20-2716-485c-82b3-ff3b0c5ffc36-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0b204b8fcb1a103e5d8ff234db1a4255c05f024488a85d6a5535fd5a0d06f2be
Date: Fri, 4 Mar 2022 16:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646410584

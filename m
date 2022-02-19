Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 725FD5101
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 06:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645251384;
	h=To:Subject:From:Message-Id:Date;
	bh=H4AHf/JVPAZ7xME91A95dlTsXQoyyUUUgSkTGxXmlNk=;
	b=lIeRvgqEbDkKM7o/NvbIL+VofoWC0YuU1Th8uXgFy/sAbLe4RBTVXEPSQ3ZKy/T+
	b9GVeMCldMKPDWOB04biebBjjhmSZkFJw+dwSHARpbLOgW7sIBzeC83IGJtkIhAulYa
	ed8IN+F4wZI1zk/604N+CkkN8JRyJc/ApEuvXEwQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645251384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=H4AHf/JVPAZ7xME91A95dlTsXQoyyUUUgSkTGxXmlNk=;
	b=hjKDlG8wf6wfy620eYsRtDfRciqvMZHdYAHZZhxGN2Tlk1m2O1s6pXukjaPPKWuv
	PJ71LlIP+ZhwCHbJ/fXz7jD0Xv38w0z3D2z5FtYMHS2XqaEf8i9Uqo8MRJ9SygOtx/f
	kxCW0Obmy7/t1MNUt+qGXtBo0TXaSSdazeBmhX78=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f109fd584-4b050cb3-0e55-44f3-ad5c-122da8d5fb58-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 02938680714c3f18146aa955fcf7ef5807e55745e1e67d075cbfcbb97b51ccf2
Date: Sat, 19 Feb 2022 06:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645251384

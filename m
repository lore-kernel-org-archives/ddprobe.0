Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1003D3FB34
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 13:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lR1F+4e+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78B31C433C8
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 13:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699967896;
	bh=vl4BMplJETbR7pAVHKgDAHDCAiUtOi68XeLRyX30pI8=;
	h=To:Subject:From:Date:From;
	b=lR1F+4e+JrnqtgDcS+hoyvRzy9xQmEc17K6S9gITNLhrTa1vkXfyluh14rlh5OWRM
	 ds/mnB9dE0Aar/mro/vI3SvEZYDWE7Gn1WPBIQiJOC29JwbrYfqI7q7uK6B9wtaGeB
	 cOXhfkOMV+lp8E6oEQs0epFL2TIZtpk17bpnv9WKsVoPY8hIOZkct49yRPTxXaf3Jk
	 A9f5ZG9SyRMKW5HqVk31RSLQqmjyb5tJzbX2jZ6kvW4NljA1QlDw5qcOOEwNbtubN4
	 3a9ItafzAZc6DvRXeyin7IcRumurPyn/EjPq1SMNLSyS0hV0wdCC8PMDyfjVTvF93O
	 pobeMtOlOPl4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CF89C4332F
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 13:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169996789637.14886.988959029602485111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c68a86684c568e3f1faa628b40a579d75fec4055a71d1607ed49cfa97384179
Date: Tue, 14 Nov 2023 13:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699967896

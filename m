Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5493C084
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 20:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uBdS180T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A98CC433C8
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 20:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698440296;
	bh=e0IDykG8oi5YbJxQBfM1K/a2Cj1DpND16IqiZa9RFDg=;
	h=To:Subject:From:Date:From;
	b=uBdS180TyMMzb4Ec2ERkuQUb9g39SqKgKaXZ6UdJOMZKwwaa3S8sQXrUkiXHE9p7m
	 Q+2UE2882bfVgt2GiR4wRISqOUA4Q88RPbylgL2FcEG3rFjWKHKgDpY7Z5/jH9vgOY
	 IOGRMoWCLkDHcewUxmiSCdYc5QqC0upT9u+eAxV+NithV1Z+AIyBX9R+wprNoiVOrZ
	 imnzRzTX5LBUdiLl8oqh5n29m7PHPrNQdHiMT1Tx+5v0aF4BSCNjidgo6VbTCcqKsn
	 YYxXwDMYNQJi1aRMIWZ99VUmr+hoVhNNsw6QLqua+Laj3H9n6dPGXgjkGCw14C/xpB
	 J/nwgeV2opKkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D88AC25B47
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 20:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169844029643.20541.16240662095312582168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2d2c921879db32b91708e4f128ffe60c800bc11ef57f716ed47d75c3399663f
Date: Fri, 27 Oct 2023 20:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698440296

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C1E2587
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 12:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D40AEC433EF
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 12:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675772885;
	bh=7csBzvj0BpjTVVCTW3y6HiACXIOY8L+vRPmDEhBxi+Y=;
	h=To:Subject:From:Date:From;
	b=SQzdN4ewV8IvR3NmeMVLyNabcjVQ4eNg61pVPv0In0WB1/zmFqodKPYVne2jH5X11
	 Wz9v+ytl8gSSV1FKhSIWuH59AMFyuVuvwAWv8PK2j8MEXgtiPrn9Ivrq7GRtcYHI19
	 AitqGhL8vk9/Zg/zXjRGyX+0jljUiAP/IXI+9o0DIdvK/Yx6OpoR65wPX/fVKQQsY+
	 9BtwCW4TA42j5UxtAAmj2FuSscXm1TMSCyooZtu1Ir0OrGYdkxRGuKTLuylKF+7oVC
	 zDeckBpCtMTm5uE9N0mxZi6PwBLRsAys1B/YXU6SKkmm2LDHaAuTe9h5OBE2/YRiG/
	 cJcg6cpy73zmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8CC9C636CC
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 12:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167577288574.29371.8986087657728834079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc1e3eccf54ccffcc4ea792e4b33d03d8533176654c24e81760ee56f1fd44578
Date: Tue, 07 Feb 2023 12:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675772885

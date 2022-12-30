Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E736F7E
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 19:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E4A7C433EF
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 19:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672429287;
	bh=CBX2iLONTqXsFcDPWnYGarBS3IssKZltDfM3rQuPEIU=;
	h=To:Subject:From:Date:From;
	b=qBJyk9InVCv2s7AMNkAPVOq+Hi8Mk1DM1T9m1bbudfGhPkXbifVOMa+rIAgx0ckeK
	 XYJyw70l8E8I2QF3qHJQMAn0yKy4o4lqVQ4vmjT3Z6+A5oUFmTfEVt50h8INNFeXtO
	 rjwlcqN8o23Ta932OEIJ38BivL7WdFaimf/kVWLEIvItJGJ282Hsq2xL79G3vlVlkz
	 s53S8Cq60PNRw8gUdnIt99Qqlwsd5ZY9TVT7H6w6ykPm0l5gm1DkJfE6rlg4UTPM6n
	 Zr1EoakrafIjExB/3eQ7wIdWJTYUVP5FHUVS5KC8NdYxxagC7FvxUSWDtFS8xZ0z5y
	 kH+b9OtWF4Ing==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B2B8C4167B
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 19:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167242928740.11077.17269627129370323232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 610acd5ef96057baed11534548a3b77a57d4ef107923f316578ce0e8af58e888
Date: Fri, 30 Dec 2022 19:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672429287

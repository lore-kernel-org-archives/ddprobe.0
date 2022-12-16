Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD1B78836
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 15:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8533EC433D2
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 15:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671202887;
	bh=RYiy45M0dxqaqaKPggfTT0fiP7bLvLurbSTN0F2CRYs=;
	h=To:Subject:From:Date:From;
	b=IWhUi+GyoxMfuRkoxE5Xog8XA9Rs+6ONdu4OTT1qMEb0v3GWPfrXxjjaC/MRKJ9HH
	 F2+EXTnSYmZVlZi/1KEAgLt/4i/sZiBJQY4M+eIaLPYFJp97WrjNG6ixosHAiYeMmW
	 JtFmScJOIsQGoxHWaSwlckpZstPHcSKBvIY+uRS9Yk8FwaoeTjl2GS1fhKE6YfzjA9
	 KuU6rQrDk7lKvCB07YQcYU5xzEKhQPyX8Acpno4+5KlY2aiA4y8H/YZc6Nz4m8ilsC
	 T0+OfWufM8pRQG1IphwqVYJ94PSC+kqaly3e3e6BG6MVVTXKZ9RXdcxnTzFOYlZs1B
	 2xsNGhiz8TjAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67809C4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 15:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167120288741.18815.13586127184478367998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fceaaf34ac63e24c93c4072bf0958e69dc951ad3ca0f2371e1c7a6b3a5b200b
Date: Fri, 16 Dec 2022 15:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671202887

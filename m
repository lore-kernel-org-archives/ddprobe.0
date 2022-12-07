Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF473376
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 01:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 723F9C433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 01:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670374854;
	bh=oLSe9czJ+g0l+SAAH3JMK58lpExqFQYZlTlAZ0A7pvU=;
	h=To:Subject:From:Date:From;
	b=sxyDGGGdt8JUhkfE4LduxV4KJ513rfAET57ENM1KEAHmXKarVzYhLWZqv+wOHUhBL
	 0Q/US/KF8LO0xZsa8HghGxQq3EDqPDrrFkY0o3m/ikuiC/NN13oZGeYAnQ4rhAJGCS
	 bY8Ze8kW3yNR04C1tJSMNLsnXbXZGxunWr6rhFYNLvINLCyHGM48fIMmT4zNOgtUpP
	 EpXkR+ftcTGNwX17CHZUcpPYb33uN/y4BU8ovJXEr6SZ0D/nNgDoJbZJLLm0wftK4V
	 Q/Z9U+SpYvNax55dPJ8QJUcLvkoeLp5hOIjasXMdX/QrxCGUk+Prl+I/GiBVH06cT6
	 n5oz5akiwQKDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58867C352A1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 01:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167037485435.29603.4074074001278941437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbfa83ba3c0cec1a0eeb4bca08507dc24a4f8ddebb6079608420e4b9450857f0
Date: Wed, 07 Dec 2022 01:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670374854

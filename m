Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62191A34
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 03:35:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8552C433C8
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 03:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695353708;
	bh=bOZkvKR2WtcpoqFtDcFvS0fqKT/4UHtDN7G9nN+Va6k=;
	h=To:Subject:From:Date:From;
	b=uL8ivAIaDNLdYC0wjQ2dvuDW3P9ZgPDoZwKiY/9HDHQSN0TlYJR1aiU1+42QIANyX
	 8MXIIJrRHZ3TpwkLBmSh0D4IdIzpsKFu2GmjAbl+J5chX/3BXBBc+u78CN7RUV1IFw
	 0emqyvHuzidIS7FZIKdMw95UmmZ+SbLf5bOGPrhEseSDsuZZbKgfl9oeuoL7aKl+7l
	 CiZgJC8YrBX7e9Q8eK73IcO8COASW4TgEl/88FMJKuJfr2gdHkq1PUL4R+EuJ/C2ds
	 9QWSTshyBeKAJrvp7s8HfIUQ517wN7nn5CgVaAKjsyBLu+6IfLC8uLaqua0N1+5hId
	 cNuRTmO2YMl3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A87D3E7D0C7
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 03:35:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169535370866.24536.2813504342112577362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6488a8b61fc3bb380b921c4ece8fd7bce7d97a61d5e5dfb68aa6623541a157e
Date: Fri, 22 Sep 2023 03:35:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695353708

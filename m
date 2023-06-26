Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AF0A8F6B
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 13:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9B6FC433C8
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 13:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687785188;
	bh=J2e90tdI8T+EsWlMs500jYdx7Ynxhk73E7AHRnidj/E=;
	h=To:Subject:From:Date:From;
	b=L7qQ2OySiCX99S/8Kgd2lHjNeQGWEfej2VYQEyKXzYy5YtMLJrewj3YK3xDNSrzy0
	 yep49hy/KKbrX7PzUKlFRZD5K066lHkcyT60qbkBhb5ryDqhdXRxqgOX96ORPZMPDT
	 t/WdBWmU43sgnb/ozniYPKjcSqkzckQ9wcx004u7e5XENZ/mFV0scS6qqKdqZbAaln
	 NczR1J0okr0IMNIrckVuXTDhhLyqypE5+PwDfzSUOKPOPVrB04TxtWxd44YmWyPkpi
	 6PyXWK0ESuf7BiGLGv+Qacm4jbkV7eCve8JVAD92q1S8fNS7P6HkzyGwbrg3rltd73
	 tK2gGN4ti3bHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE4ADEB64D7
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 13:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168778518870.6785.10055370884975410816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d75250b8db72992c58f7bfad961b94dacc0b3ca48fc1726e6f451124b42d0c73
Date: Mon, 26 Jun 2023 13:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687785188

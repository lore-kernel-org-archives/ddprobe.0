Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3A583207
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 15:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 649C8C433C1
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 15:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665416453;
	bh=hgSdON1r2I+Kmjbt5ZAl67WCL7fnqdiX2DCX9NoD1ms=;
	h=To:Subject:From:Date:From;
	b=kzh+cNYuLVVH/LZyCJR3hcY6iNNllpPW4D/6jZpMdmz6akvZWxtHQs7nHdd2NMeT4
	 N7LfuwuWH4Zqjgs4bCoq+JDMqd5nSheGVNeswN12r516B3AwnocsK4dZsietdweHyO
	 oprgDhzMdZRsUSyWLauD6/vJuRI1LcWZaVn9OP2EXFq9A/tpLxdcI2Ak5f1X4Gu23J
	 FHx6pizau7WouqpKABp7OhLxyQeSLc1jcryRqsl3TjtM9UzhBRlhbLgCSRx2eFdfbm
	 vz5K4vrytWQ84ZZMavLnrBsM/62eA17ZtVgy8cW94LiCGU9dqYS1OgWv1vhC4gdErp
	 jcckbwQN+pjmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EB99C433F5
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 15:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166541645331.30180.17373100807109598120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cb5d507998727df6a1c53a311cc0c79b9d558ccd3c684f6c08801f847c37e6a
Date: Mon, 10 Oct 2022 15:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665416453

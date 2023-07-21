Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6774A2100
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 08:42:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF16AC433C8
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 08:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689928928;
	bh=R2CEr3K6OwLmMNrIhuOTgC2a/cCdv+nJ3jfVh6aMPRw=;
	h=To:Subject:From:Date:From;
	b=fC0oPGTlelz5Gat3fi+TMY8vfuJ0h2x/Ioq6qGRYSXyWe3rl2sV0MxJC9+FAHn6Vo
	 Ermfe+FFGRIEYO4qEi1HTvHdaErPNenjYv1WkpGsOOcQFyiWKeXI9mX7ax5eMLR6cz
	 uqniN2orMFPfnX75EtxSIGH8dvlx1VvKXqOnHa8s3rBQ+mZWT+fP+BhzPROLnOCRb5
	 iNkkfOq9KMjDTx17wXypVhqfWbK3H3YR/1sfHarnEs746yb9bSp27upH0I96cCmFGT
	 eO4EbFJ6GAHPw2q/UB6IIXnpejzaVBeegUDZh34x3A09yH++vfNFB9VDWkUZ706HAa
	 Ar+NjUM4yaG4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2A16C0015E
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 08:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168992892871.20607.5258131453777717238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcee106aaef34b559650a72d27ef4f0c453247e36adb53ebc9fe04c707b8a837
Date: Fri, 21 Jul 2023 08:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689928928

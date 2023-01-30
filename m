Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4866A3C13
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 16:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E63BCC4339B
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 16:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675095185;
	bh=5k3YnOKD/TlNJFedIl6OG2+oLtGUGVt3uUZ+Y8Fk360=;
	h=To:Subject:From:Date:From;
	b=e2Q7S2lhBrfmKbFd0BKp550c2Q8j4XbgEf9feQFUcPzJ+cWmF8GQgHRsYEsVeUh16
	 geyY0O/QCE55zn6S3EaEp800VgqkiGCv8tcIpoQFZUbaZIlUvS+jIcHb4jSAtZovJo
	 ZtQkv+hLsEc+H/FkwfEoLtrCFWfOnci7lzz8HuKi5OzxCmr/GKo8Mj1MVTG13G5qHf
	 qMYl020mTO5noGE9nvGVPshy7wrbSaT/lUc2v44DM56IdOusjKWOlMMwn8zTD4qkIF
	 AjMWW935i40lo59OVtmN/PC1S4SRdgeHg3LhqaTLFp1RTWXCfYyCRn4UR0Idvwg5Wx
	 Kl/Y7U+lhItSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8DF3C54EED
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 16:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167509518580.16603.5073534997575211414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb4baf786b5e8a23f5d8a994cac6b56d5437c9d89dd5051e984ada1bc291fa64
Date: Mon, 30 Jan 2023 16:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675095185

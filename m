Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D39AF2F2D
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 15:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 836C5C433EF
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 15:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672156287;
	bh=dosRdhqXUw1G4SPx+6LmnWWvYagv18gfPyQQJbKDtyU=;
	h=To:Subject:From:Date:From;
	b=E3AinYHvrdJSnbEI4MOyT5LAjji4yCAhcX9aaOTAh/H4rM/lBXZaEhC4UOC8IHuO8
	 LLsge5taB+AUyCas6iZl6mEOErgue7+5bmMBrSwlVfMGeRECrRWhUtQXK80VLNTe2p
	 hoTjPsITJjslXcHf6stOB+z1k5BGcY2zdtWpZfHj/XdlB0DxiKOhVOK/09oNqTUPLS
	 HzX9MulwkR6CABxuLaNImeXy9WTz8S9gPhZ/ieKBEBPpMsLqx3zYab0+6XLvL1FIBu
	 7TFD7YwIuE+APj+EoRwDUzaBJp0YV7R4eCs8jbY0OJ0fgaBLGRnZ+5aDLXnvNYZuOM
	 DM8g99Haka9Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63CE1C4332F
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 15:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167215628738.1685.3700001392020625534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbc7bed555dd8f4142f21d927ff40c853717eb943d4853bb45f925a5b035dbbb
Date: Tue, 27 Dec 2022 15:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672156287

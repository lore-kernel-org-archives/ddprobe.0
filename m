Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C17472912
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 22:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70E6EC433C1
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 22:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665787853;
	bh=nhqo8SAULmD6ca7Vyx35TiPOxO/sqdi0GjE+nNQz698=;
	h=To:Subject:From:Date:From;
	b=aW8OeCsvMLPoroQuOYbJpquMuhlX0VP7Et3cfct9DwUtvbJSFMMuIqELt3/JIZ0Yw
	 s8B2wcyrT7WBVxdKq9l8uoB1AB3Z5GJO7yH2v+lEXolEKj9/t6N+ylf6dBVyw+mdbz
	 PM3k0gpqLrkQnh9LMJfcFM4ON7ILpRjCk5ush/LtcolsXINlJ4YInJL7Lq2Ox9EUZR
	 KK/b76nVwtjkOx1c5ACeRUv0z4/pjCU5ZpT8DwnoDGDp9tcksrdHOYb4wrGUgozfLv
	 O5PD2uq2OdnVa0bG31ZI1m9Dn10BN69zmywFukb5GQh8IP7tdIS4zIFSwbMJlgFx2Y
	 D84YxHk/UjAiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55256C433FE
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 22:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166578785332.26442.11659839675100861726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c8318ff23a479b767580713eb998a192b2e79cdcef1a648d936d061d30a1993
Date: Fri, 14 Oct 2022 22:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665787853

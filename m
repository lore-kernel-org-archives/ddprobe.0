Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43B8F1306E
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 19:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C41E8C433C8
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 19:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687893788;
	bh=kkHin1MvckDi4zIXjHxea3Xb1Kf0yracB/ovtNUgS6Y=;
	h=To:Subject:From:Date:From;
	b=kU1wZ8hTOOgsphd4RMltPepp7WeKiCSuXj8c4gffWSzWK3DSTGgvkk+31ACjEKs9h
	 nn0hcYZh9vgfRDa8zOPhY7R3qpeV025sHKgzBYlw6kz5s8qHE0CBhZRqbiYoqxoKtW
	 4ZXTo6M1qIuj0fgx34CgIQXwgP1PPlzL3V8VWW5SiKJYlECc4yNwxO1YmWCKtVQZqX
	 RUIsV/gvg/OYPzXtTVH51RvMHyK7+SzZs4AHCsrPaLWOljUHusr/BQyNYNnAxDt9q/
	 NzBobdRWRcERmH+9iq2vH285ryR+YKUx5EWcuHdTix6In6uF3RFwB3lK0UWXcBPzLt
	 SN9Ou2r6E8tNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7E18EB64D9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 19:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168789378867.12704.16055621057909563279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2c7c82f0445ae2bbc1c2b366f71f2517053ba2bc67f4755e42e489343740169
Date: Tue, 27 Jun 2023 19:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687893788

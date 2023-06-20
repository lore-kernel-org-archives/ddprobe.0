Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A69216424
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 17:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D50CFC433C8
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 17:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687283528;
	bh=hkDNNKacA5S1uNKkbIiD7fWY30H46+qGyPdbOgkO0BQ=;
	h=To:Subject:From:Date:From;
	b=ZWvQMV7cYtDmvWSeW8IXY39Ks5nhG3VahA6AsOf6K8Stbw8YyNr6VyXPsYxJilW3i
	 JcxJlGtIZm1sVStMovyvrddPjQmNt+qKrl4Ww11lNOLRDFHdCQktEZsdPSSYUgTJi2
	 8wmgewoXi1AcSiil3GCzY1sS8iZdT1y7oqf7nh9JKzFYwalw2az7J8cpl18LELgLD8
	 iM9tmZ2sDZoBzBZeBDvLQZ3tVpjMQ9Cs2Tw9mytCKd+EoHQtiEoBN9/NVXXehjEA+Z
	 L63kZ3JVCK8ZpzECpwXXrId5NWFjTkszjFcEue/Q2sgu7zBsNAaiDDJWO+kXMKoIdK
	 Q2RyjMy6KtR6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB4F6EB64D7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 17:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168728352875.13902.5772881173524179677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b0af39d63efc1a985f035377c73bd9d492a286e9eec21cd21cb7f32fdd60d5a
Date: Tue, 20 Jun 2023 17:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687283528

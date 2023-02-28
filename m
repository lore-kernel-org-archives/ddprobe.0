Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FA382CA2
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 11:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDE5CC433D2
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 11:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677584765;
	bh=SUmKyJc/f0IgIafj4NOdDTI1qkXB54ch6yAmOXXZiJ0=;
	h=To:Subject:From:Date:From;
	b=bw675Qup53xKtlgMpUnuYQFmdWgy///SYRTMpq1tURutND++WaxMbl6YbPr3rv99+
	 BnEO1ojnoqmkuXARsfcA8i29WPV6cAP8hbtjxMQiXxJjOl/n9kfIhXthGdpsR6dKC4
	 PdcoBcVjo/gGvYbLstt0PBRw6fp3jy4oJnFVMJvmp27r+qFfV/KbubzPNLTYZO3gFU
	 /09cHFcxnOpX/uR/WnhUxVmZvZMVkVYFm2vULZ+DeRPD0NDjOwRNWydUGRkTG5geDm
	 2wmtlPurHS0QB0/7LKBIczpq7pTwyQKw2V5WmyzRrUviWQbPoiE5BLyBZ0A/ie23ua
	 izLoP9LCEpkXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1DB2C64EC7
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 11:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167758476572.14086.7721759487708636854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 047bf6d5c437f0f2234db1c59fc90ede1c7450da689a983a146e9ea04992ea3f
Date: Tue, 28 Feb 2023 11:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677584765

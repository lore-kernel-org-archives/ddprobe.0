Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AC5C5CA1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 14:03:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8651C433D2
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 14:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674914585;
	bh=ggbN1SOm5bevGo+Vscn8MHxPHYUyNKKTTRFCZofnS0o=;
	h=To:Subject:From:Date:From;
	b=oPzI7sQHEQmuAOF+7o+k0NHZXMEtfOjkl3/HqN9jVTMIGvAG+xWblkaJNPIkUyVGg
	 fSGnEM4deHyJ3rKJgEJBoZYT0iy+uPUds9A21AygkgCHhWC7ASvRsgW44TUZBBt8QN
	 IyBzwf7rIkFM5JnFjb20ed4IgSmEAKsVvB4pNn9Mh2NvZ5p7pZxd5OGfryMAfyt9lw
	 klpEYIBKVhVdcmhdEcl9NDHtcNaVDzUhA+wPqkQL1Odae3BHprbVVDybAalPvIOcjX
	 4+XZFtSwNj3ojxpjoVlQbjCjbzEzyCnHOq1lH62ATjASW4lPNf9uofUEvis/9E/XQy
	 YEFEwWaI/L6rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2D41C38142
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 14:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167491458572.31459.11626531562389057536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7af842d3a9f753158b7afdbda1f8afa4bad171dbc94588e4cd7c0232cdb4950
Date: Sat, 28 Jan 2023 14:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674914585

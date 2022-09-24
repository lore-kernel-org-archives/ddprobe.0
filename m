Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC1B117D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 09:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 639B1C433D7
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 09:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664011253;
	bh=s8jo9wLTNvoqBI/yn+ODj/N4gcNM9vlGVMQ9q0DbYW0=;
	h=To:Subject:From:Date:From;
	b=foIorzMb0ZwAmRWxSu75ecbuSICqIFpTj2NAdyLto7z8oMCnlWxVX7E5VcdvUCgEb
	 o/RiBzFqWml+5Cu7INyzR+GiMJhMx1xB0tT7tXYP6jXtgBnC7Di1jNZYndozUJqRe9
	 4pSghN8yYNyl6brdZjUTsZsZKG4pBtifsyTdw9UR4zqObdheSk9YpndaQCSqcO/x2y
	 haonDTgDl1//TNy24ZofU9eowCJVTj+xwcBeRLPKpRa/8sp9vfBmNDq1hGGRRQYMhO
	 jNQv+HoWdhUrL/u0FtUWx4NUZNCiZ+ehNXX4N8hY7PONOgHHN5OOBWBP9l2QSLueSz
	 dU3vq7F9ii1OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E405C07E9D
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 09:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166401125331.16125.8608538930412690957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cee9f1624e72065e70e71bfe577f5299de373ab5da3555606536be44ab9280b1
Date: Sat, 24 Sep 2022 09:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664011253

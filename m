Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC882565
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 06:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF499C433D2
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 06:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678777085;
	bh=CThGexdi3B6GYtXoXo+MwJeAN+RV/e2EuJEoFSWC9Ow=;
	h=To:Subject:From:Date:From;
	b=egFhUkCoEmluLYqC282aYsUsQaB2cNWMf5pyprCpSdRyfup65FH/qPEhzqZxAyR5t
	 5U0E1SVugfRYAQxLUmKyNKpeEATyS58gbSn5HSoSB3M/+1N79hovtFQjir3pR6fj7X
	 K2Z+jA0WozM1IDJjN7Mun+DcJcSNl+idPFfn6Ri2kri2EmKmxGrqtLHoYBhy+vqOgw
	 mEA8G+5a2Nt073GxEiX241pxDMZo93FrSf4BVuUqVjddaTG3x+RVai0TSUQ4o1Iq2X
	 kxBt580u/szLaz2gjqIfsqyIvtooqW+85VziAvwXp+5BB1LmL5qJ+gNJTUF7XC9FFq
	 Pv0Qss1e2qpjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C434AC6FD1C
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 06:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167877708578.16025.10477831501776128239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5979680346954c8754726f66922ad6fa36e5bf63ee098138cfe8c64fd6be7bf9
Date: Tue, 14 Mar 2023 06:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678777085

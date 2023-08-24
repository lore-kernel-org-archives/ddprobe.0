Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 987241FB8
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 03:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC504C433C9
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 03:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692847448;
	bh=cjk/aqDFvgydYFSOV2w46PA95j20J/RQhmkckMSa0gM=;
	h=To:Subject:From:Date:From;
	b=M2QbkLCBSKzA2dnfIqIeg3QUkBipRn0o9UMq11gXeTdFg7LwY0IH++CqwQXhMKvC4
	 79tXHf0+t2g2fhMueL12+ADKlFilR6iBwU+Dhn8u+U4CvyPVB1EYcCVqHkB/YyfWE6
	 OVmvfqDo9K4yoBLPtJKh8zqpT6BlH3SrkuLoNqjmutL2gseAacD/OuHVALTQFlcIbZ
	 5WJ9yv7sV5Pj5coWRg4sPntUMV0gA9jcIPdpk+6Ksj4XGWUPO+dYfJJD8kpO6cEkNr
	 l6jHBZC1bh6yTkxBkWbOCbEBYge9ERHFSC2dJ115qlTpOVVGTcKzn9Nxk5OOv/9mS9
	 FLctZEWH/mGXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEDA6C3DA6F
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 03:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169284744871.1307.7161206699809943612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a27e442716466171d119564673c81a9f4f258088450139429cbb7a287563791
Date: Thu, 24 Aug 2023 03:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692847448

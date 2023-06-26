Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80C0C36B
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 00:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7958C433C8
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 00:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687738388;
	bh=iYxVbqGz55TmllNzts+Y7v06Ut+vlnDd3+XW2PPYR98=;
	h=To:Subject:From:Date:From;
	b=nVbDf0J56oH6LKOFPEoWf6mqJVL5Va45I3bb0Fm56QCJGRSthbrvNUEfAqiWQTCQq
	 jrS3I8TGlAOSYLpQOkcglnt+oS03tRa47/NDX4sLbqcIx9BxWAzSMRyzIvxclp8AjU
	 U4NMYMSyqPYAs2rmpYLdNCEI8sFjXzs5MKMx1fN1gUut0vgltx2OCj7icxmv3w/ylk
	 Ne4obAfCmViPwKZeol23awlTmeztjh/5D8hLIOaHl6h/CQjfskO/6CHW/so+aW/YIt
	 hEBYTIU6BkehSy8YLbfNUpwy1QYNMC6Pxt1XBuCjomIFRVVibi6lsaXbJe2RlaHkrm
	 7AQ4Ybs9O4hjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B540CEB64DC
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 00:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168773838870.9514.1364345706302128370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 046ce7e90a198e6f19283185d6396789ea8799a7552ba56943c66afea9c65225
Date: Mon, 26 Jun 2023 00:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687738388

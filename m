Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE30423AF
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 17:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83B8CC433EF
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 17:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672246887;
	bh=5RCc5EXbCCmqHU3/8jRWxBWX8moWqzfhus6OtrvLIcU=;
	h=To:Subject:From:Date:From;
	b=XB9TYfmY+OMyhZx/UiFh1vG4raPu+oD0Xy6VLoHOxbxbHMZwKcEspniYaGcU45Agu
	 wxgBZzH8yhG3vd0b9yhUaOPcB7mWWOxqPwKfy2Yg3zSoyqLTHDc8z38dNwhpYSNLD3
	 DGNO42d26XIFcxavjI1mvubjQnikUuz9aUpkXEJMrx6hhrWooKCgJkbalc4dmgoELP
	 PnIS06PRzhL89E5kFvXgSZpRI0CskX/lTTM7GnB/x23RtfIRSgOLb0if754MmAQAWA
	 cySoJB9ygSIJO3IIAt5MvE9uREbNT2HxPgmPXs4iZHCQndqUKkNO86co2jDq59wU+K
	 05gfwU/r1G8qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A56FC4167B
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 17:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167224688742.7297.18199189271294903897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7517a873acf84c5680587133f2b64d74fe1807f2886607124a6841bf730e628
Date: Wed, 28 Dec 2022 17:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672246887

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55F958F70
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 06:26:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD496C433CA
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 06:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695968768;
	bh=SSRqhwv5kLB8hic38iA1SF/TZuqWQdMusjM4LGIlotg=;
	h=To:Subject:From:Date:From;
	b=KY9mMqf7zdfnqwuWUZx/3SmxsD3WG4aZriVybzcC9h4m2TI2O9lzjLheq6unAWolG
	 ChUTVK6FYF5UtimwBIcApA6gzT7BzJ79zOY7wSRofXMxiVfnXJ6WCwuDiFv09ZhO2Z
	 Ta70NDHAvuhhmLFUjvTBydasxgrVO/29P7ujxu4g/78kq5oUfaf+qT0OEiYdk2YoO8
	 J/fa5XrNZ++ZPdlQA6eJn9R+IsI9/ED0uOWNcmfDPWfNvBpMSstMBXYlBLgqBUOcEg
	 RREMyxtFlW2VrkD/1/hzhROLmiPQYYCpO0TO6Xr/fF0AwFaqb2lmwjcX6oIItCipPu
	 3/NEpdjR9U3Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF296E743EC
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 06:26:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169596876869.5926.7843799261735660866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12cf01af1f282c711bfd9acda635b502ba9dd27a15531c0e2d940b80454d7a78
Date: Fri, 29 Sep 2023 06:26:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695968768

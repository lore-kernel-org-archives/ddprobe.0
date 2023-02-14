Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66CC27E
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 02:44:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 07A2CC433D2
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 02:44:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676342646;
	bh=mkn9mF8Yjeky3HvKU6KEXrlFxf9+dFPBFOc4d031arY=;
	h=To:Subject:From:Date:From;
	b=TcFsLwlt2Any+dyW9X29yzQG+KB1Ea+xwlygMhLBsjBQqLrVdZCJNhmPL7P/06aA7
	 v+AOWsY39N+2cjfdnZc1JkTlTcHuNi+2lGUs7SqT08FojsqpCZTDKMop++y2Nkz8Mp
	 OOxBFrCca6VRPndR+PRDA6pFeTlqYjF3+YU9H1p0fUfUthA5XnXdUFxmAxaKRjbEBp
	 NqW8qYKWCzDivM9RZtQXELzvkH+15r4yQd2rlAvr+XuehvZRBgwclgwtRUrsFAKW/d
	 XuZethjjL0aj805dLDByZ8QTKLpuxQbK/iorztj0Q1WOolblkUVFugFpVHb7rExBAz
	 WRHJytpVOaT2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC8C3C636CC
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 02:44:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167634264574.18310.15017750871664996579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c974246490088eecc0df3720889a8f37635d91b82b9060d8736bc4dec5d6779b
Date: Tue, 14 Feb 2023 02:44:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676342645

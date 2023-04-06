Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50A71D533
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 21:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 02479C433EF
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 21:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680816486;
	bh=uBkhnFURU3vEt027e6mUgrUg/uxUvsII8mn4XSkAzXQ=;
	h=To:Subject:From:Date:From;
	b=rAlv8OstCrAnDAsZueqC11YoPq8dKJt9xAAoo3nwqwH7Ps/Cq/rEEUeChzkIFJPlU
	 18dMk6p51yWf8tRLHe3va44Js0b++2lH2ojdLY6h6be7Z8f+lQPzHOQXtPaLbyVzkW
	 I/rD6DDhxbXXiNkBOLWOm6gvHHLSF4Axgs+ZNMyEZw4xhAPbhB2hjDV3S3DnKNS6Mu
	 oAwIE0sDnDlxpVyXXM4l55dF1xtQulwXNoIB93l0bNdTqc7MQgbHcGOUQ9S+7moNc5
	 GxFuIHN5Ndgq0nHPlZhxGux7UULFFXu6V2Reu2g7i2YC6jyV6biu0Jr4L3S1igahAy
	 WUBAQOLDIetjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CECB4C7618D
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 21:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168081648583.13960.4941859110864564956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83c09f342610f5dba6719e0676bb0f5e87212ee9b39eaf620a2027a6aaac6d16
Date: Thu, 06 Apr 2023 21:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680816485

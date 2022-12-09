Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07EE47E8
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 03:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94F55C433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 03:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670554887;
	bh=OumOVCt4t9rB09ZqmGtDJ8h/wMqN551ST1QflbHH1no=;
	h=To:Subject:From:Date:From;
	b=PmZ0AlAtLnl9Yyj484FeT4lZcSaCLmw6xD4J+eubmQsq6YLAbJI8APYK9FcuTD7r9
	 ADXoALlFy9jXknAa6UmM+7J8WtJW778GsuLcqeakRJFRPXTXWwmM7a6Kw44Ke0+zpi
	 hPkDb0GQwbhqRpXqgw+yEoSAD03HhSfCn2VyMRM9ZahxAGQJNsEtnk/HvrS3G58Dvq
	 KaWIMaQBSlghanplyX9Y1Mh2KVZH18MzLAVRtk2Fpwbx9MOZf6ugH1uAgVdJcO7Iby
	 CsaJlJTnWShBSD0dF/5XiIRdEu9W5XvRzjlw8bjMkAHTtx7JJ3UwftDZOKOq80MFUa
	 FrOTk0LVjHMRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7126FC4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 03:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167055488743.3078.11510820425788753003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9dbe4b934622910bbb324c87b44c2317ce9c9e2ab481a55c0813f9b693cba45
Date: Fri, 09 Dec 2022 03:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670554887

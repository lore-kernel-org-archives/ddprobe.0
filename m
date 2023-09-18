Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 425881FDC
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 03:55:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9FA9C433C7
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 03:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695009308;
	bh=PIAWsfx02wLWXTA8AExgFMW5mQpivjxNpNJENmEDapU=;
	h=To:Subject:From:Date:From;
	b=L5YR0OzaAdfbX218KFiH5d170w1BQJO7kFjLbFM/jK2rmLPL+cqWD+wtgHWX1rBZK
	 fbZB3Lq7Wa+CQaH68OOGpKKqfL9aDz1x86Q3an5HQeEnLW/WD8kEGq4TOaxVuPwxWQ
	 R5es0AnNUNsVxHTlbjg9BW9ec1H81OWIEkuToBgsgSlcn02ym3I52rG6MtTwu4Zu+i
	 GvkR2q36SImJsAkbc6cZWVLuC3dkEZmExE+WGOk7fdDYiyE53U/y42oRKqvH+jKdzI
	 DdqFR34KPNoR+cC5kRV+rZju2Tc9O1Z4F2K3W98+NVlPmwpDRrgunMWstNHKZzwa50
	 TU8BZLweBbFBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD77DC46CA1
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 03:55:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169500930868.25446.2206512103077205563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8079ad1a35b7d3d232acbae4b352fd966c99127650a7e970dba514a1248c6a4c
Date: Mon, 18 Sep 2023 03:55:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695009308

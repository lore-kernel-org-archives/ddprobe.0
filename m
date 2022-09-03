Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5A197E
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 15:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66CE9C433D7
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 15:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662217853;
	bh=h41CGfOQnEIsh2Xu7JUksd5IfBpFRPE9d/DwZCAS3Js=;
	h=To:Subject:From:Date:From;
	b=ifykxMlLQDeQwq+FfFKxAgn4WrneoM0FaqPU4eLyijGHdebEayg2R/zgUAnDtv8Gc
	 PPur1TImhNf9JZmdWfqiqO2S5v3Dz2lP+SlY24SvmEciI8dFLR7+51OX99pVB4EeSm
	 dtcNbwenPgjt2RxsQn2OstRkW8DQMKnbabLTVAqTir/g6AvBYjeYJe+XIXlTUaiGVg
	 5S6krrvfTczA1+CNG2xiasCjVkoUdD84fFzni2uyw1iHXepZFFoKo6wB/39kilL0J8
	 iKgUXFMFcbbulXYHGy4xbz8lkA+s5phH7VxV21P+RHsByZs8shx9O7dmCkeaD6IwB1
	 a3aBDeM1Dm4Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 515FAECAAD4
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 15:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166221785332.8981.7795911674586210930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01ea00badb7bea5e8777cffde7769f3190a349923db3ba41214a4241a1c5ac81
Date: Sat, 03 Sep 2022 15:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662217853

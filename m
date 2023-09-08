Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 585321C03
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 08:14:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDE1FC433C9
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 08:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694160848;
	bh=kQibRI4+fd9YQRbc+ZezVn/oGTXOAeWBPsAG75OEdnU=;
	h=To:Subject:From:Date:From;
	b=MqhFjoXxZaOC8RUFaKYjUfpWyGn8xbo10kirrAxUZ0Kf2pWyRujSBwg5T3oF9Ql/w
	 qeNuIiA/gUS4qPm7I9XYxVDKplBmineK4h+RMYIbDFuS8a7Sm2+wLt8KvyjZlwFIhv
	 y+Z0ShbK6jExd+y0kTqRCGGtWZkM9+USvKM2DHdpwqffnd4BfTC8kShOR0AZ0YPdgn
	 BUIR0fddngOf3Vb+EhaSIipjG9vjvC2P5tAyhRjEnaunRPRbNnYVRjqSUQLvJIPM9c
	 Fcm7rpkax8KWlcxqiXc6JGjeDal0DLPDJYU3wUbJMHFYkmjPOFiwYOQuldt6LI567k
	 2zbe+gL1WgkkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A81F2EE57E1
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 08:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169416084867.22312.6435750314039744872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45f25365bac2f4dae399b662ccb26cb1198f303ab7cc7caba32941421375c76b
Date: Fri, 08 Sep 2023 08:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694160848

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B871F7E
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 02:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 748E2C433C1
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 02:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669343454;
	bh=C0t+T2KJrGov4d8mk1nwONx1aCgw+TkKW43FXvzTCm0=;
	h=To:Subject:From:Date:From;
	b=sP2lUX1kFjIfLALstDVigG7fnv0kVVG1Ft4021CaDFgCyxS6uS7945cWh6KaODiBK
	 ATo753Oa9KghQzsN89eUi4BV9UMObeDVG7aomvNMxuWtwUtf4Lqea+7JJ1CY6dyets
	 MCOpeQRnDDp2xP6BO2iGs3C0fy0SKcbZEHYa+aAnZs+WqB5tTsTBkZIxWlNV5lbIF2
	 HYUaq+DGe9717gtM89lUTyLvHcx8DoSOsBRdIU9WvugtDKdcHEPkQwGOUreTYgPUAV
	 mpLrJONF5ifRri0jE+vAElaqK7jOPuQnkHYZ7wNkJfTQa3pvcL4rWLhhvr/5KEu9+R
	 U0MJmYh2wWlBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55757C433FE
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 02:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166934345434.20487.16967097906076165405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3cdbb2913a17a39cf2f1706eaddd0bd0c161974c2a19de5417844aecdef0b24
Date: Fri, 25 Nov 2022 02:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669343454

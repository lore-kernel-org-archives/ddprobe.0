Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 358171C30
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 09:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBBE8C433EF
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 09:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678613165;
	bh=MA5wbb+oafQrPa0CAutSWeaFS+yzGicd2pGpE49KZmY=;
	h=To:Subject:From:Date:From;
	b=hylaT5ykTR6NEUnjOd8EJepHtEURSezmiDiH3y4vcZ2jKDK5Jl19eeUgPQqalh+5c
	 k3Wm1De/uE1xd4xVXHWCdZUC1tPczeDgtLMEuGZ/YZ3bhqwXCeFAXJfVhq+bg3iYcK
	 Etk0msHEO/xMYP8kGy4B4DtgLmq4dM56TnOqrk30KDw2zz9e21Wz9O+WLgecCY556i
	 WPyjP2Q2h45YkRqZk8Aua4m+3HMJxx9/K19RVJ04Ixtni4EJ4FzQZpJPNUqrW2iizi
	 BAvR1mGE94AMJqxfucHsutgHWyaENjmbLlEVbd/9jj/sXEHYnu/KNHvsCgCV8ADu9w
	 8ViMtVpfXKDsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEFCFC6FA99
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 09:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167861316577.25301.9898604241861342654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e14206f5b532db612bdaf11ce61e78a7ae463d4e33da679ea140ca217b2e7ea
Date: Sun, 12 Mar 2023 09:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678613165

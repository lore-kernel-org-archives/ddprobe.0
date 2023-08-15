Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58D8F17F3
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 05:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C62D8C433C8
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 05:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692075788;
	bh=f9VHPHj2iY9MBY3NXEwz8kALSOiE0RzmjW5duLqtENE=;
	h=To:Subject:From:Date:From;
	b=HCAnCzGYGYsZ1gkYJZPmJ8hY9zAxtBfb+qvBqnTsZLFXkyWlnlISEbHLdlmwtM+6h
	 c3b0tMG3eHJAiQXSfGB7eiHdozcagcpcvM6wdVeiYDGwNn3oYy08cqMcaHDa6VdkYE
	 otjkbSYZh5n2fN/cIMFTMdrx9cRD9/0Pr7rPBO5yr0Re/Lia0kzmxxwdhmp2nb8Iuj
	 oWegO5Qyas+diSuH3m7lrs91Gwp8Shiyb9Ezn8t6ZDfBdeK7nSjVONO5OtAPI3K4K3
	 E9nnP+12t7DNxiucMQqtKNh6fMWtiDrFzlFy1tYxHUQir6IuXbOcq5/CK5Xz8imtKK
	 kt3fQjsQirRoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97C5C001DB
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 05:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169207578868.23713.7444766667777853011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ca0f99d6910d7f4334bd210f6874c4a0c888dc35c97ce22b48bdbc6adfd4dc3
Date: Tue, 15 Aug 2023 05:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692075788

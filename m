Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C9BD20F8
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 13:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0470C433EF
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 13:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679836325;
	bh=RjJ+zT4yB1/Al/lTpAh/ObQUJYl8OMzwTSi0m5nFzVA=;
	h=To:Subject:From:Date:From;
	b=DSAw7AF7PZSQ4H+V+OlOjeMqOvFquIgzJ5bGeEp9AjaGdOxcZUrLUaefudbq9EOh0
	 CySE803GfMYt6Hk6PtnwElz2HtgMgQegAh9F5f+PCinFYM8tJHz0mc397ROj4IGC9n
	 cnONC6eHbckkEpxCldFffYzIxG6GOCBLEkxP+KHW/Qtv1/spkIMdmHsPoK86wpO4SA
	 NetOMe8b02Ky3X6wx39RHAyLX0Ktj6gdxnQLRWyXybA7NoJ4CDnfO+GCrI6v4hKl2T
	 3bvqgYcnsCXMdpkmW4KxBnzMYlXlc64yHwPLvXN4/9Up8R31zS+B8Dl36fkixJ/gT1
	 yJbW2ljhI3MYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8C79C6FD1C
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 13:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167983632574.13106.13958523684409787395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6bddd845b6215c75e0dfc9de1fb2735501ae6fe85ed8a55acd2f23b84b459bf
Date: Sun, 26 Mar 2023 13:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679836325

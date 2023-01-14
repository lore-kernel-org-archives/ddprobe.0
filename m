Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E905D8BE9
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 18:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85B7FC433D2
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 18:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673719887;
	bh=04PUiIvccLGKXBOBOd/afPqdBqtNysXY37IszvxdiVs=;
	h=To:Subject:From:Date:From;
	b=CryQnEQajI95SGGKzmQNXbNWma6fIYqmbIeLlRTpYpSJNrlHrmIVZDiavvYf/qwO2
	 QRweNVj1mjnKNWFZNuilo5ZXyPmQFs2uQAo/PwYr2I0nfoIWN/QSYYn1emmemjac2c
	 TY4Dalmpui4sQ7gKW3O3VOC46PYWu4Z+L55zRHiBH0T1M4kjtKd9a8UhBz1kJFgsWS
	 ldujx8RXAbGH068Sm44bbNImDrGFZvjhjQp/qaAZc5mszpdhsdFziKa9/2L7kXW8Ko
	 wjbvEYdigchs3Yi7nCqJTBgjE9JyaeZrMx0kvcI1JxAe2C0tsHATck6jjAb8bYAW30
	 dabEY1V6haFEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 661E4C3DA78
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 18:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167371988739.14046.12422822952143067327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5da02590e5ba01923ea2341779c03e13c27fde0e6213f06eed9c7446214967eb
Date: Sat, 14 Jan 2023 18:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673719887

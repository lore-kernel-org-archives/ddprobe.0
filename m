Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 139F95466C
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 20:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u3lOuDeU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C3FAC433C7
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 20:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700599096;
	bh=AMhJnuxzTrV/Fg2FFKybmwtL9uO9GXUxhGa5OEJ6EcI=;
	h=To:Subject:From:Date:From;
	b=u3lOuDeUpICz1Aet/T2YGo7ZjaN8iZQt6lr+vskBx7vcFUfQ+PUrMz0hecH2moWXJ
	 cZ23e9qv22BpJmsgsaLLsl+k5vbEQ6zlSF5hnNAY0jCiF7b9NWLo+TECJ020MVLjFK
	 2LuQqIrDLjzCTLxEpCKkIb6q26RM6mFAL7qNuwvostI/6nkd9MTSqKbixmFaHHHbsW
	 ZTBjsqm5oiWk3XxYS1qPzfdZOnzjm4JpqRyrvQhJjN4Zivpbc/eej1ewBuhZ/5rhCn
	 ewFdzsYZTweazglDiwp5kjhdQj3OgYaPOskYZcmRVCUhz8j3BWrFJO5l1IB2WGm687
	 3/H4jfx/Q1iBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6491DC61D90
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 20:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170059909640.3911.13555384698277374615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc7fe5e460e284fd14be124bc5f4fedad0f00a7d4301db4af059cea59b2983cb
Date: Tue, 21 Nov 2023 20:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700599096

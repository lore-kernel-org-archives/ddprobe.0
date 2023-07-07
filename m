Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D7E81309D
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 03:27:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDC48C433C7
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 03:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688700428;
	bh=Qc0rlFUC/sUUALTw2Yikh6Lnu8CCPk+o2zBOGt6Flkw=;
	h=To:Subject:From:Date:From;
	b=RcGTlMRveWg3819an8ec7iM6tcTRsSHThcsze+1h67mxkf7OjUrRE9Nm4XVVX5Q/e
	 xaiu8DHrJt9CdBYnHQTrRwCn//6z6YSt2BJhS62DoHoQ7Em/CoFQMEn8gmzGbUiTyf
	 +XswW/ZtzaIhOW9hx1CZ6CInrq+QNS85BcRO+FS4WsJr0wpbwJ239nQmneTtt19G0F
	 V8fZLa8gzmaV7sp83bMf795llBxr8RFzQzBG9k7EjpkZPqFSX4zPsjSe0EQib7brD7
	 jgnayOO1J+ZvpOEKoVE/AsiGt/6yk/Em8v+uCg1h1XhQ1yHEZDXNJsNybJ83sQzarr
	 0qp4UJ0jODZBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A35E3EB64D9
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 03:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168870042866.19466.4091219966597261134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63156751a6c49b4b57c2c395aa8041d75a5498538a0f58ab8ad0f36a6a24770a
Date: Fri, 07 Jul 2023 03:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688700428

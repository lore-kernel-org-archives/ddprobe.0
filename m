Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3D3A23B7
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 12:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92FE5C433EF
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 12:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672401687;
	bh=6cjG52Z22WnrxVPMATssflP9uraaq/53xIozKPWfrmQ=;
	h=To:Subject:From:Date:From;
	b=ECvFYwEjV9cHX65cdCW9VgdTS8I26FxKwBuutunrbqAhZg6mizuBhUurJ6xLEfzTD
	 0Qodp8d2WV5UpBuJroByN4c7o9yKshSI/NL3HYSJQiYE+u5rgru/2RHW06jfB8/cbT
	 jKA7HNxbWBRltYsTxJvMGpZv81Qq94RjIdfMLo5GrJJtF9uh3MTxsPAkDQXZ4cElWN
	 aszbfZ/Gli5iETkUc1dsEOz7wadSib36rJkmJIXJy2w7WNacNoDaOmSi4UyEfjDJwC
	 7W9/os7TaMP0KdrpaubUWQAcT2kXs47IcqvY+ORwi92BWc8xyOOxbcnyIZQsOGy2L5
	 Hyc/0sG0CutNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 678DEC4167B
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 12:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167240168741.3180.12374058025887683760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 987a9f564bacf0de04db4dc42dcfcb69d0326eefc493580239a5af223fac7d49
Date: Fri, 30 Dec 2022 12:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672401687

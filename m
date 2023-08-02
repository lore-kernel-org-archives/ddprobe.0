Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BB8B100D1
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 20:52:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC82DC433C8
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 20:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691009528;
	bh=Of+xj3T7ti11pn4VnIiDRga1YXqeGObt7j2CGJ9BMZA=;
	h=To:Subject:From:Date:From;
	b=cahHjsCJA+IfFgYN9YtTKmy9bdqOGx3fFSQd9XmhvdrIOiGgjoWaVZdlKktx1RzBl
	 RjyRZSw9yGncTzYmwIlZy42Wd0+yMfbxFz4LKaRWdD23N0BrYkf4bBMwdhNG0x3jEu
	 U74imSm9QbMWCE5/pk3gJ5usTL19sSFPAPwWHMebjXaSnNcmhDuMo6uSZqYQUl/ZRT
	 uDpH9GkWlPscmdZcaqdfETknIMxpkQ+ktuO4adbDX1H3zG0LIykJhjEMxjom8Vn/r/
	 8iqQcL0bFcnBlqUVuv+j1/frhvl9r4wTzikynghhD2JWIjW5JmXUTtmqPl/ZJTLQic
	 M8AWuRj1GfFiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE2CC001E0
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 20:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169100952869.26070.13940608849109963539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4bdd6b494ad625b0a714cb68b0384c77f90120a5eb8bb7abde20cfda128b9ed
Date: Wed, 02 Aug 2023 20:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691009528

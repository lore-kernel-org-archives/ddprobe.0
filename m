Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD4D5366
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 05:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A11BC433C1
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 05:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664169053;
	bh=bKM15ylSzucDYnk5U2VtSRCLfKj228emq70atALVizI=;
	h=To:Subject:From:Date:From;
	b=NlaZYn0EyPDxos6GUfWxlwgmjpVWMDa8yRQynBVXp9Qi5Ooiyev5liZeSMzZ/C8mE
	 uA0xa5mkSpC011aI7XGf2iJCibDg1RvcUJtfHppgTpTwUL5dnr02NeMYeQ0Gyx/Q9U
	 VKuhh+fYX1imuY4uhaZBHkC/Hnr+VU6mKdfbTOmv+HxL6oeVZD4HeYb+A4FdW9Ac9H
	 t/oVMSypTfqKtfhZ2N0eb+dlbGdwIafJPqKIX7A0Gwecp2+nlSi6ZDGKi69kq5QqZW
	 h0KmV7pONm/SI4ZbroHR3DTtnkcbK4ubT3XUg+uI45tQ73mXOaL6UIkmzS+0ogG/3A
	 5T3UE8/9JFQ3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F23AC32771
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 05:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166416905331.2482.8054420590469507043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b67c97ff8226135e5e49aa81c2aa46163173ae7e8755af64c69bf2f91f1da8d6
Date: Mon, 26 Sep 2022 05:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664169053

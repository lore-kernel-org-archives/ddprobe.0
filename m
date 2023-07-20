Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63AC4361
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 09:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E72FCC433C8
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 09:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689844328;
	bh=ydSJx4NEbFIbahhmyxZpNFZmXQTaB3J260PjNvzbqCM=;
	h=To:Subject:From:Date:From;
	b=FBMuLpDddG8sHpejperByO28z7b0DhnCbNm3JAgwFLlvn0N2ybhH915foD5KoeNs9
	 FCP9qIFD1cC4fe9Kmbzqrdlq1ysuP4MuZj1sPCydF6IbpGyoRTp8SuH1uTkR53NY6D
	 fqdkjkE2TjMUb93iKBMl2dye5XkNTcxuLvbbB5jodzmdFBVERNOUQitwaJOiblYDUT
	 ToCX0rEQ8bz70LrF6+osAYt9a3jq0zuz+mjO16a2VubAxyMy/GqhB8FgkFTx23SVrE
	 3DXalzSV+RBdaDo38tovm93MEOEUbgN7bn1kQI+r3OROzZBijfMjLgpKwk7iY4ZjSj
	 o7ulBnikyiN/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C91A6EB64DA
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 09:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168984432881.3622.15682292972556838023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3f3e1fb3c573221657bbf304b08fd8ff0669dca3ba82acab4fcd3501168ae5d
Date: Thu, 20 Jul 2023 09:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689844328

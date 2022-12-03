Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B281879EB
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 19:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B9C1C433C1
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 19:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670095854;
	bh=k1GTm4UfJlKOIXb/D/uOZVjFxwoNxioLRxeMljP/NNA=;
	h=To:Subject:From:Date:From;
	b=JytRASup/BLe+WyfMQ1nmkq48Liz9Okr4FvOO4DDqXa4FZIupsjvseBqaNwDamnds
	 e8tgBZeGw2Pnw0Op2DMDCzpmfJvaGwgTcmiI801uYXn0S3R26r7PngRvLapjimvwcb
	 4pqonQvlf7vn0H1SKIdOOwUMB0+28CZtGzjYWIOH+0f9kryxjcPsJO0vxltyuCRE8b
	 NlldNrezSjmIka9NKxrqaxNMVKLVWItnvEoVgN7naBl0xtP0zDVl3O8Y2GkHv0jPfy
	 biW0nZmPkohfG40tUVgVBlPHjvw91SLn/zOmAVnAsefYtsVOGU8jD9KFRhwpB418bt
	 qYZdpBNUl/bRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 500D2C4332F
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 19:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167009585432.17750.7115319909693008665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c66ec2ae857cb98db79595e449aea9f6716ad63f653d1ebb358ff440288f8673
Date: Sat, 03 Dec 2022 19:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670095854

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD9EA23A2
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 07:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 801F0C433D2
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 07:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671781887;
	bh=wwxrWIs8kmOMOw1TvmOYKOhf/NKLwm3IOD2uwwqsDMI=;
	h=To:Subject:From:Date:From;
	b=tZNJuci1volFh94lBhdaU5Z43aJFmIIQUUe6/gzGrExWvqv4TXPjjrpx+rujnuzJk
	 YxMaanlHh/1p/DoNz3P7ZY9fGe8Gl0PNzELoQFbKxT+/LHNq78SHoZd5YgdlMF1kn5
	 HKTuPKChiZqIIZzgbHRbnjimfBkFN47UO7oOUNfGX/NWPtMKAsySTTpyEAIhRlsKpX
	 j1ifyc95JA3UdHJl+oI+Wk5fdeejWX6Qq8Rzzhdy6+gqMW6LNVxNO5Vnw21Ov/ifv+
	 +WDDgGICoE54J/12RZQjUJGKAuIQqyon4BoDduUOOnSQtIARFwp3EoUn27Sa/DtGpj
	 YuH+5FECM0M8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65632C4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 07:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167178188738.16275.17031911859942968061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 450f778af5d293687e421caa7dffe91e49470bceca9e3e635c5e26fc832d38ad
Date: Fri, 23 Dec 2022 07:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671781887

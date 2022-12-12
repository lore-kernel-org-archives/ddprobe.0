Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE7AC3212
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 17:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A7ACC433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 17:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670865087;
	bh=gO+uUWugCgPmWHenOoQQJCIhstM84dSssQd4GNYHu7s=;
	h=To:Subject:From:Date:From;
	b=qZUWIEo7QhbiGmCVhIWw0j5t0nEftkuD3S8CLRP1uvt/Zva4Sb83F8QS1/wueJnvt
	 0l7qRSqbTT5OajSBgtkA4LKlrUN0l/IgXIUtWQ0pk8lgG8oBnuzmiCOYnTKG0R+aZ/
	 UxvZSTMjarmNE/tm1MUQRRLhgGqODknS3i8zdRdhjEixtW/P5d2nUpwXEz51rqCNuL
	 ydX51cfjMYoLe7Ou6t4FT9vulfvn/BQqf4lmzdRyq/znsZyPFtdBr3DfOkE2+0IPJ7
	 Eu9ZXk6g0PX5tyJYftwi28WqPsO8tAA9cWn+kdETkePMQepuNzH21ehCa4xm73Kj6T
	 lEEKwxByx/nYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61050C4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 17:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167086508739.21795.17063142195609628184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 883ef0bcae5bf4b582cacfa179c22f932ab170687b644a0d4479857c79945c7e
Date: Mon, 12 Dec 2022 17:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670865087

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E8ADA31
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 05:44:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C70EAC433C7
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 05:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688276648;
	bh=le2N88I1dFwxhkw5dZHj6N5LuR9f+E2oBmbC87CEC44=;
	h=To:Subject:From:Date:From;
	b=PdPdMEbcG8m88hBXvpnCwndVC/ST7gbiySK7UMXg/v2li2uc2+EXGEdj13gB01L2f
	 OHd9bXLMLvHCbvewIWN9SRc9z4hDxFkv6uI/c7tvPunMcTRsc5kVq/e4XpsKfpaFJd
	 jtApiix6AW22KMAOLqyQmm8ewlilBg+VIKfoenGopDtnuKOWLFOgifaqtVlPI8ExzW
	 YdB8LjOPVV3w3KciY/uoy+urWU3slTgoQkMU6kFYJ0T1hgII4rRzbgc1tieDJWBQRA
	 BFz0y2b76m+XvdLN/N8XR+WLuMlC33TptGIaeyWsnd5l2an5aMVsgUtpiUeIlJWYaG
	 +BcAWol7MiENg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3D9EB64D9
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 05:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168827664868.14765.11539329596456053972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69687eec456c7564d517f1309ebb15d9bb6b495900e9c6a84a716cad7d503b77
Date: Sun, 02 Jul 2023 05:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688276648

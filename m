Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B27BA7462
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 15:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67055C433D6
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 15:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663689053;
	bh=2dLLHzrH2BI2uXaX+OLicedgWo3LDn8INUx5MTACBbU=;
	h=To:Subject:From:Date:From;
	b=XGUE7GkLrigXLLEuBvgeTEVoA1t3tMeIUVGlBeaNqQpgIjZYQ1TxXbUambs0g069J
	 /XuYNHiDsTOOmrEQL6xIOYJK9kGw3DZVEwDlj5D6RKnEMoX5ZF4omzI4Zq+UAG+nST
	 hO2hCyGHR5G811nfuCHocqOeLIq41X3VsLN7ctBxk6fE0HWHIoivasO5O5sH0gwjmD
	 239/dhtD94WA+Gb9GeacF5iEv20m1LP6XuwhEN4z4kaoPWZrX7KOlcbCqb+zmKSobp
	 qEfpluPHki3bqYnWG07axBl+wZ+X/ANPq09prME69QtbnTiWeNomQU3pDnJl44hP1l
	 UaGJ47O+gD6rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50A4FC54EE9
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 15:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166368905332.1146.17300459361376312229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 731f83f3e982292bd7055734de90cf9224c826322bd5c63f47114290c249661a
Date: Tue, 20 Sep 2022 15:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663689053

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE33D28EC
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 15:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CF19C433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 15:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670859087;
	bh=uYaBcmWo3K40TUqY3w2Xdf/nNXYjzZOkuLeEmDo1IX8=;
	h=To:Subject:From:Date:From;
	b=OXj5+TKzv3/9KAJ99fBXo/YxTiMct4G355oBjbKrZbe/qwdA4EEt63Dmb8uzF68cu
	 zwtPNX1X0rfzPM/DCDli7dFDv+bGtFbZjsLDmisZoNmhacG8zsbPyzwAj+CTxm22wI
	 djzhGVlHHWBk/KLihUhrcWQagLtkW1oki4ym7Ycky0VNoO7z0Z285UsTVkKcOCeEv/
	 PmSZPua4Syq56vl6aoUiGkfC0NZ3fRqajqDtv1IhIf5tvoBSlvJUlThEv+HAk9D/j3
	 s7X+W3akzIs9RMtELGcSStYKoNuZBF0ZiMHvwzrXXGPeptJdKs5WPwZJKL+hHQDXhi
	 N08U0p4bSXI/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62405C4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 15:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167085908739.12618.17197595197311868633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4e39b11ab86306b4876fd39553474bf32dd8605f97803e4ee8953755c949a86
Date: Mon, 12 Dec 2022 15:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670859087

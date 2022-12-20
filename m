Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDE3D1878
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 16:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87D15C433EF
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 16:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671553887;
	bh=Rj3vK0pni6iMYJzGmQ5jo7JItAu3eocr5kCss08Klqw=;
	h=To:Subject:From:Date:From;
	b=GxSwuh/9bq3vKutPDAdDp/bGr+TQTnzkYTSow4AusVrkdM1JtRWzbJtbbWYl/ME+e
	 +fyIWS6YB5tFqpns8Z63pN16S+2VZNfFouPyx82OoKwCKP+fDsDCTZHPQwEa0zkG8o
	 3yg1cKnXrGtPE20NmyhyKsp4oWYd/Roo9FE33RPVoYVtqPn+B+MoAFwwi5FosbXlpp
	 olatNhgODHGT1JWAfI0Uq1lhyAkiOFnvB3VJ9iDeQsFfoXXfeO0Hb0p77Og+GuB5LX
	 vtqWXguOnBLUhUDLbqCHTb2ZuISSyd3BULvfw1tzthRAycHAmbk4B8qZCfP4TxgZlg
	 n1wVcZoMTg7Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 675F8C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 16:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167155388741.11954.16045012860532374011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aef8fbc9f5bfcd007cef17dff86ce64b94e9d3cf66093750ae32c8667e57b3b1
Date: Tue, 20 Dec 2022 16:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671553887

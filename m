Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C896D2568
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 21:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B9B4C433C1
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 21:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665954653;
	bh=mfBdEOqbhbJcbaYeuCbVjSZHKXLfL1pO0Y4B6Xv9oo8=;
	h=To:Subject:From:Date:From;
	b=ok+8346xEurxL5JoDKOrFkN0l48l0hCZweCoXr0blXrywSwq1FXctTw3fpQkekKtW
	 stB/qApkNtrYBaxebZ3HUwR868x9TYpsH/GKT4QJ6vcTyMVK0xBgJKBAUpbSPU+Kov
	 7W259GpfJRdZIV60nzWsspaFHZq3nQioe6NgNsKuwABxL+j24RNNlhUAFI7tr6chp+
	 ntexrHrkjsdJs0NLkq6csk77VFOseNuvjaMc1mnDdzhTlCYy3f+mMe38uVZWdOAK6O
	 YUeZWOQGEAiVIg1lQXJrd/CGhY1ZEk0fZ0hF7N8h8pBWb6NphBMf4x24qkD6de/Dkc
	 q0e9zGqUDX/Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52234C433FE
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 21:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166595465332.14830.11138235412513911485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb130f1a24654a9c3078340beb5082f675ad027f329b212fbdb10e434efb6790
Date: Sun, 16 Oct 2022 21:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665954653

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC31317CE
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 12:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78631C433C1
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 12:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665579053;
	bh=24aFVCGHQGfw7JDoZGmdJLIUcuBzZB4tuYBE4Q8EQJ0=;
	h=To:Subject:From:Date:From;
	b=mV5E7WKF/ADjkbiS7y4TsgK5wYOOKM1bw/o2U4SbG3xKqVw0VWJ79gunhPhHcOki6
	 r7Zb7U4mlxxkwGpO93gPH3Wix1ISqJiZukpWRrpC4IfHYm2La+400bGWjcv/YOdDPn
	 mowfbhpcVPGuk24tNQd70JiAYdi9ZGZsqOvJV5/n5nXcLWhQDMGE7UtkHFkBM8pHKy
	 PPrwcuB0xre4Uf5ayRVrLSKrUx2q8vXrxpUsCyIhriWNVvqOJ9j63wIPOlj+KOcfEE
	 CTaYvXoMGUQvW/E+5YoygHMru/huSFnH8RtYl0QE2fP43KM616YkIgWJ8sVdxM0JKv
	 rh8Kx0kdW1OmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D41AC4332F
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 12:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166557905337.23052.9876638963610154933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb1dffb34830d63439bef20e6e3dc7ec7f550109db44a0416c14325c37f8a410
Date: Wed, 12 Oct 2022 12:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665579053

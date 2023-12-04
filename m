Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FC99241FC
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 18:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G9lI8BUE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80A25C433CA
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 18:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701715696;
	bh=AxbJ/fHa+ia8JAh/dO2Y34lqxAqvn98Wov7JSH5CKBw=;
	h=To:Subject:From:Date:From;
	b=G9lI8BUEB5TX06G6nIcxpGTXfHiH3buX45WOsny6Aj8T++X07oF5aiuRWlfiBI2vW
	 a2ieXVhmkoi7i6Ze/yECRBrfvL0bsa2PPMNHseR6YR9D0KcGkbqU+7mreiAs7sYub5
	 3l+t3j5KoamixcV8vUiqFT3VK40ftZA8zTM1fdcdJ03BqIsc/HZM9YrbTiwsHotfv3
	 FphqMwIR/nBN8sJtC/VXIiHCoCRlVGBJ1Op5SNCwR+INkaOUuYKY/jWMYnlyhHl9up
	 nT0DS42hh3ZZvXN9Cj74hjS8kIJI7YJ4kdnrC4vBczNeeBQba/+M62FOOkv0co7FKA
	 px9GsAKseFNEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 618DEC4167B
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 18:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170171569639.17783.17034135489645674827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2f201512281427279b7632c678f4098b78584fceecc0e61c5e5a0f7959c6d08
Date: Mon, 04 Dec 2023 18:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701715696

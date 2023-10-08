Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 531ECFC07
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 20:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ue6VkdMe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D47D1C433C7
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 20:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696798628;
	bh=vtEN7WJor89NTePO60XwuF4An03p8D6jcmZlTLBLLN8=;
	h=To:Subject:From:Date:From;
	b=ue6VkdMeRCwkOx1zwtQL03UpmS49db7nSosDb8jpw8iy6R41Eq77wVER6kqTGT5Ox
	 qNBjm49gSHw2sCAoTxTW2I96cYY4mwrI/LUyk7C0+WjpbmayovEjzku6dubKYOzIWw
	 p2AXGZXW/++pOrADQ2fmElBuNHf1E0T5Sy3vDAU3LRqSsNCXU3dfebBM5+RnYdKhOm
	 ks4qng0bvyVEi46Q8iEnoElkNQunAoI/+6USR9p83lgpwhMEfZfKsVJxQO52Bo5yhL
	 KbQVSD7J17kqtDrrwLpiplmF35awECLeU0A0hDThQ6ifpXKO7ap8z+pCzzeyunKwgE
	 tIAOs4Ckir9tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2CF1E95A67
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 20:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169679862870.1748.17522307913750975397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ce2b42c2a55b7320a0021c966237bb9d5bb31c07feec205edec9718f55f2956
Date: Sun, 08 Oct 2023 20:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696798628

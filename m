Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71DAD33ADA0
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792377634; cv=none; b=dM3b6HpSwZhXOlLxfsIx4DQuXB4ECWJ5vN++mXg/e2DsTloHMpnPAGOgoKN7opjyGgfgvq63qUyAQoALlH/nI+tVEbf4YLceGNITnsY9FEE8iOWP0zTaLgvc7sXGRoPu3mwvbcaGR5jr/Dh/UIbhnd4q7zmhcVkrTG38pv1souU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792377634; c=relaxed/simple;
	bh=c8PAOvLYYc1fHL6Whw7YAU3TgLrzXSTBOQpFuBVrwdc=;
	h=To:Subject:From:Message-Id:Date; b=O+o8Q5a5z9zWMl/YdTi40YlL8cS6QB8/61z7TH3JKYS9YY35xoVFkoOF/2EfnaSMjGOzCpCjXyHVN2xig5FW3gqUICg1w2ySigPB6bV2VHeNlyXELSEtNZ7oHkh0yN4JC8HP6Ff9VUb21/xnLSZNQRF20Ctn1Je1Tit2woI0kp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l8sNC4V7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l8sNC4V7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC96AC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792377634;
	bh=c8PAOvLYYc1fHL6Whw7YAU3TgLrzXSTBOQpFuBVrwdc=;
	h=To:Subject:From:Date:From;
	b=l8sNC4V7LDzryyVwKyA+YCFNYUYmJXiL/azJLFPn6lIN9fsGg8r4Scr8F1hPbsSVy
	 QmOe7yXt/1p9QkAVXkG30jmAMt47K/NMa4LbLkyzhRoYhbsd9K2mIXVn9yAPcA8hHx
	 Ar5ssYlf5wqSGS5aBq9Yxn4/JGHanautJ4SxX1V/PbANCJD159hNgaVSd0A4LD3miF
	 4XS6LuuezxvN4lLt0cneB13AZprq0AT9wWBRhk2gj49wDVPweqwV8Pn9sSvst7FDHC
	 ArCzg363ZznIMUB0Rx3CeK631XMKUFu9KVyUuz4yk7G0ViDiQ6pzP7+IL/rWyylAf4
	 E6SrSv6fC0rJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0DA2CCA490
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179237763376.27623.2923520452654172670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caf94705da10649f5de980a1bd464919851a709e24d9f85c54da12049b029cd6
Date: Mon, 19 Oct 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792377633

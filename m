Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F0A382F20
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 18:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776882454; cv=none; b=Q3zpJQtUHQ2UcbREF+ec7O2N8PSRImLU9wNLWrJOdXIGq5D1Pb7E5+OXD+RXEdFtY2D4CeWaTPU8oMYLRiiVj6sKZCIZUEtvqtRvqZb1ciQXft7/6xAClGZhJn0HUXQ4jVrtyZGiJeUaOyPVeHckEGLf9kW5IxE8u/X7LMyYc3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776882454; c=relaxed/simple;
	bh=mVrYZ2NECfjtBkmw6TYYckQ/Aal4RwcylHP97EV2xfE=;
	h=To:Subject:From:Message-Id:Date; b=BHJ9/DFIVARureriULG/WUFvtK+KSPn9N71I8BPpBUNLM/XZH5ocQN+Bs4bNZCuFi55wCHtuPT3cOqpcyswRqxurXWLR2v7zKex4Ts0HUVCLwC7zoMROimwBGhQps1IyjApE45vwrSg0nlzXzBuoMeu4lBBb1vnmakkW8YHsIuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=plRG/nSm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="plRG/nSm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9195C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 18:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776882453;
	bh=mVrYZ2NECfjtBkmw6TYYckQ/Aal4RwcylHP97EV2xfE=;
	h=To:Subject:From:Date:From;
	b=plRG/nSmi9pNeylKLmI99lKCLq8pHei9bZ2Ct8dRyH3i+dqNLs0lJOyLUql/sKQBz
	 AcSWaC8uma7kAyklv0VvNZCCnVAzLwnPx0bSwG62yfO8QyZzZ8387J5kl1iRIanUhb
	 5iX0nyagjW0Isaq7TbY1pWOvWV8Rh6+yoQr7Y4y+wXDFZDd80u84me0QiC1HcZHAzC
	 m6VuSOfFa+9YwQ/0Jk8/VRImV2T0x0uPQKxgqPJHdVm0wHotEGaoF6bttYzyOkgxs7
	 zrrb2iDO9Idxzu6hwu8BPKiHuz2DH1oIz2pWC98TCRKBX518pgkNLZ3XTsdGW+w77D
	 eNoDojsWqOz3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA893FA1FE1
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 18:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177688245368.16445.4023732343708607508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7acb51b9e45e6eea82f2c40ff8ae8e9e852c9d405ae878b62f1338f0e1d0277
Date: Wed, 22 Apr 2026 18:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776882453

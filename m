Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 644D314F8E
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 08:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GvweUp7X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D24F5C433C7
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 08:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696926428;
	bh=vXsE3UjXjKilHhh6hzTZ3DxuRcRCR/FUSniw9c3R//I=;
	h=To:Subject:From:Date:From;
	b=GvweUp7XcBz7eViMltJOFu1qiK1Bv88L7ZJiLvd06ztp6RL82lizHso/w7MBIkcfj
	 B47RRZgoIkwgEiy89/1soilv27VunkaQrg+PhN/1cN2s/F4amouDufKooIcJdJtG0C
	 0DBPRtrCICVHO9r+EWTndF2o34aPgI7OFCyoPFDjRAjNFN70/g3JJiHHYb4H24/fQx
	 Lqhg/btt1AO1eWXyOrRB7k+0vWmodtm9Kh6HCSidku1jo55hZ1H+BtW5ob2v524I0s
	 Tsmf8e1uMk2uTQDVq3bIHoQrrlTTeToCEmbKyBKz0z6GTuM8n8PoxxnHb7/bmQYAUi
	 DOLq2quSRBwSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5662CD6907
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 08:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169692642870.4924.16960721368132489023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7989f59be56f892482118ea979c369675c7b46fff99adaaeee478af297df1e56
Date: Tue, 10 Oct 2023 08:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696926428

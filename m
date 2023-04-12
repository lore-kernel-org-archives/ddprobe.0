Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 302D5364
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 00:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1434C433EF
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 00:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681260725;
	bh=+UJMj6aLlmEhDJYJJneQl6YL60fkLN2DBYF7XcF/Wz0=;
	h=To:Subject:From:Date:From;
	b=c4K4Qlc09Cnpqt2nLqq9o85MuduPCAFmA9sH97G4k3DOgZtMv/bYxq2QSo5C3CL+z
	 lIbnj+lwpYRWqu2relrfzTgmY3iNCNMgDFO03lb9IajVN9g4/vjOKuEDJoDYy+EkQu
	 nWe6q//FRlrt63cTKvc283YS8GARn8e9kBwfY05OnmTi2cNvYggssgtTL49zNMMo0+
	 pFXjqccyCZzVVdGQqgya0b2mUlJOEj+qvjopuNbVMU5mVJ2jFlTZx2YUA+82wMiong
	 osTX3qVXjvwdJoaKf5pekwGOyMGMqLmxeKv6Dc3U8eol8g2WxMUIwBCDydpjA5Zkww
	 +kWz34HGCQKpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4C1EC7619A
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 00:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168126072573.29709.13850246256398473165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ff8b5424e3269a86681476bb474a048e345697e7c3ddef14c1986c3eeb53439
Date: Wed, 12 Apr 2023 00:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681260725

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 338642573
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 08:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB09C4339C
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 08:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684918505;
	bh=jqqjgQtCD6f7EsLrwPEPPDK8dZAyp1Z3yb2pB7CUqjU=;
	h=To:Subject:From:Date:From;
	b=tPtc72B7cHJKJ7QQW+x8fh9RPVHJGMzY2dZdFrWoq4wBOf59efZSH6DJPPxIXoV42
	 15E9ebCkGlcgIv2uE/HrUfSb+tpi12ySkt0Yg04gESvSnkjpjGWYYtvhzuYbY8WdM3
	 fR0dJkrjrydSYsZcdp3F61pKRK3rgdMnjcgZlZ3CC6LdzGOHasNw+bfKoe/0vRdbsB
	 CIWAaV7IgLtcIqD4rMp2mErSrgNng/oD8zMTzl87nmMMMNtrKDUQ3YUU+ut9lD6CX+
	 Dcg9fSN/cAsNIrsqtgh5VO4bLW9FIHXH6e8D76okqdbj3KOjHv6P4EDukWH3I/cL5P
	 YoGE5MjSzy00g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3C4FC7EE2C
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 08:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168491850573.18674.967844234714945549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbae48778d6d84fe3e4cc2093593c30c4ca83fdf25b1379db766030ba87361a9
Date: Wed, 24 May 2023 08:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684918505

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F5F7C
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 05:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0B85C433D2
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 05:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679462345;
	bh=wTnVSqYNCmDUtUJh2k3VJqj8xMZZyIBmvXLLp4ofpf8=;
	h=To:Subject:From:Date:From;
	b=ZF9xP8jQDE8i8D6cIVEerZvwfxceT9cnKE+l1uUhYBDFNW5wSJ5a4lC9NjR/XuUVi
	 Mh9w/RS+ytkMXVdmpoQ5bllo0DzBts2gfWhsCCkMPV3okTMDSPBL5Tr2rq929WoAuv
	 eseGVHEjT3v6phMkbqjFfWVmGoUG7Ff/IPEeiaVt+CDZZjAfasYJcK54GWYJv/mmju
	 DBXOcSxfLLAnmfB5qLJSZLEnXl3BkfbNfhnwLwiUrLV0opq6h0EJ2ED/1WNOSc+Lki
	 msY/UDCMalIfTvHZZ8Bk8hdAs1/qyD3PDaC9KFvWwQEEG/UMldlgWNTyoE14OlhM6g
	 WyFItOsaV1wbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5DA9C6FD1F
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 05:19:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167946234579.23124.13429962889683836829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0429c113ea540380abe8a6187f6e4c313acf2d8b06fd0c1885a140c22418db2f
Date: Wed, 22 Mar 2023 05:19:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679462345

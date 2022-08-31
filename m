Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF0D32580
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 13:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7065DC433C1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 13:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661953853;
	bh=cUvQSmIMjc0nDZG+m4o8RwkNe7Dn/qu1hSlVI5K4rVo=;
	h=To:Subject:From:Date:From;
	b=b/2HYjjbQikbaT0naM6hUKxX23J1wqJESsrQimUSv2+uxRsiFeuJlUYTpSkC6eAIx
	 6vtjEk7RUbpPCRYm6htPLWZVzMmip0zn9k9BInz/+3VtowgUxWXcrM0+nZQivQQMBt
	 Phj5yKGPNzTZsus47kTODWCsvB08W00s7QAFUXYQCNl0n46I8uN0gWgonolFcwgtvR
	 pNUOR9c+YddvCgWRxZjg+Z5F5u3WoTRCViP/58uB+WXwy9YSXx8VaR4nvgcjV9TCAO
	 B9sWqjnIiLYyN5VxUNosZ5y8KqLU6LzMKGbf/AtOWLkoj0MGrR8eSxspPG5wGT8mla
	 gO/Ul+omefnjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5365EECAAD1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 13:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166195385333.29323.2052059656947509838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0bc8f962959dfe9e685bbd1ccce7c7ced58cb649ee04fcc66e78f31705d0244
Date: Wed, 31 Aug 2022 13:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661953853

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2A9E2C682
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 20:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IP1753dL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8186BC433C7
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 20:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704398896;
	bh=hQHE1Ys5h2gaAL5NA1BhTEOvCLestpIAY015YteaKTs=;
	h=To:Subject:From:Date:From;
	b=IP1753dLvc4EZ+fWUU/ZCy4eo8Ki6UfcBYJ7wFvrf/wM9Htg/eNGN+I+WBg7CUI0H
	 PwzvnwCZ9nWmUzwnxqUm/w0XVemBuO/Oy3JB5zHzj1iqDzYErSjTfb7l6hgnbhpxA7
	 sXsozuvUzDA0qbcmHqUdfhMJo6FLBTxm3WfT7nQ6yCdCjp6nND2lHNoEv+fDU+dJQu
	 IaYT9zivNmIaC70r2yQbaH2wsXmkCJc5cFIGHWXYT7P0RojjDOnR2dP62m0GPULshS
	 rkXefnLMd7ZLw63n35b54Tyc8a/w+KKIM4EEtt6VWWdVdyWc4egHagifaq61P7jJpd
	 AJTo6ECq2GhYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62B1EC47074
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 20:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170439889639.29311.4073951222009210913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd1886d380cf1f3769b27e9d23475d4af9fec1e880aea085e375656a083fbe58
Date: Thu, 04 Jan 2024 20:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704398896

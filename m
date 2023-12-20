Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0D2248796
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 21:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TmLwrONQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A4E6C433C7
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 21:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703106496;
	bh=4EN5t4s6pjU1DmOVDeA714qfMIji3cBFa7fmTyPPVik=;
	h=To:Subject:From:Date:From;
	b=TmLwrONQNWuQ37/grDPJs6VcJVbnLi2XcpOYVpl9sN4CTC6OkS1nlHTwk9WdMPU+p
	 3TjUfdiqcJbq5Rf254bv1vF2+8xoVIo4QwuuYgkhkzcMnXtFfejXeCMZf8VKUCPESE
	 yC/diVEq2GQss0k5GngOUxb6uTH5XV+KWgHye7/0g+Y8LavtuyfI8zrFKpQYFjIlco
	 z6YGbemHHMZ1hMldtilNJAWXqD1rmizpzAunf1n10X4mC2oAjL/6tdWrLhOzh4EqB+
	 5m3027vHvBYEyAQkzeteJtB+Tw1ku37ENIY0wywIdOp0TkjNMDGBdrq5xzJ3YSQ61b
	 53Tk+CEO9HZsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C482C3DA6E
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 21:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170310649637.14492.10006620238292707011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46bb4d94953d662e8e1a9c952c06185bab6fefe00304bf6ffe251ee57579ceb1
Date: Wed, 20 Dec 2023 21:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703106496

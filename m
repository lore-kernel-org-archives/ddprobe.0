Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54FFA2AB20
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 16:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF833C433C0
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 16:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687279928;
	bh=4I8QTmdD+I9t+kSaZTV3Vm9mak3FPpNFs0iauhlCsT4=;
	h=To:Subject:From:Date:From;
	b=vDvSREo2c0PXIwqMAZwRFk69mmlfNypWwY0wDPEWua8ESUQQ2xJMk3EfbyFz95TQl
	 Ffu6oJXJdc6VqX/jTutTYE0swf72d6f56EGJi6r5qZm7vdh7njPMVO0CKJEj3FbGxo
	 YaPZMEaeOdlehqcrpCR7e5z5rHLfKJpzCIhOi5gDo7zwAYX+LA6iCKfZIEJOsf0Udz
	 16BRjoimy9Y5EiPf419onymY1y4cjgjV7B/OjChvvE4k9BcDUlGgnGQ7sJezOzXMxm
	 r6JeKXnwvBk3uiHMD3Cj4SiGmv9++Vk8wqCllsq4g9hPWePsTv5ZxlaNhN3K9RLZqh
	 iNUAzO8EhfGWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B67E2EB64D8
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 16:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168727992873.17316.2526132028558332593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2515632cbe2c0e779e2ac22ee748e1d45c51ee275c0d7257d6aba3fd9025989b
Date: Tue, 20 Jun 2023 16:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687279928

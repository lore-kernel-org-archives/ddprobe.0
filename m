Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3FB617E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 07:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D972C433C1
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 07:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661671252;
	bh=xw6Ji+lB0/z03f4CrQZj99hOKZBbZ55r5Fa9CzOx37E=;
	h=To:Subject:From:Date:From;
	b=cv+XgpJ0WPrJ4QmZ/IZYjdIt5iJzaV0ndXtfjdDl7SzE3KVnIfeln72Z1QiORVggI
	 PtCN3b0iFVxa66SDxqeRfWGbtpUAHEQKHpNaatipoD979xEtPZjVEKy/cM+zG1sqzS
	 rWD5y0SP+CqvPYVmoiBn7UfbnVkP+QKXYVOIma44f9jTN+XbprqUhGeG1RUuQ2rBmW
	 MQXvsiaXIu8efAZQOJGBOKAwxFVABQ99YlDIi/kQUOf1uUyzPRxBhGLYPQvc7cyG7N
	 sT6/CpCYYBEPdyBiTcjrUf8+t644+54pOwFVtZFlT+BylMvtXwXSju1QjfaEv/POoq
	 Z29B7YJ/e/N+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C58BECAAD2
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 07:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166167125233.22957.15150332322564618260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cad8bda800c818f2ad6aabcd5f8815045dfd8174e2b2e74cccb9871e55ee615
Date: Sun, 28 Aug 2022 07:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661671252

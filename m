Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58DFDEA5
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 03:43:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8036C433C7
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 03:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691725388;
	bh=RwjjFzyjVdkJ8TvQffWi9428qHxXtbihnqNOsTrkMLE=;
	h=To:Subject:From:Date:From;
	b=jxWJ1T6+q0eqigG7FdkHMt+dYM2BYgoMdH6Y0bQ0VPgvwWqQ1QNOYdNdlZlgYTjNb
	 MS7pGwRAKWTbyOVUURTRGmLsTxpCLb80PxlP484NDB5gHLJcvughziOWN0KOXzPgQi
	 zc7DlC5xSrBDioJi/3PuHfITu+2pQnRfAl4NZuIJyb4ibpIbE+uov0z1scVwlO8XHM
	 aXf0VGF/3U7NTQIA/RWQa2g+GveEa751At1HIp7kCO/3jLDszsSNMY2vPy5lPgQ33Q
	 j53apPcD+jBk3abw5RbEq8GNB3jPc6xYshGLO9ca8LfhOej0k+FgDIgOy1fh+EgQ93
	 XhBE2feskwkeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE85C001DE
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 03:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169172538869.1201.16880339672234006001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d104756ad909260e41c854183bf0793b9bdfa607705d8bc3276285d0a55784d7
Date: Fri, 11 Aug 2023 03:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691725388

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CDC115AE9
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 13:49:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C71B6C433C8
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 13:49:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686836948;
	bh=+MsYXwC5aw8Wv/WLk70+QSbbxcH8ymExdQZ81KqZy2M=;
	h=To:Subject:From:Date:From;
	b=NMN02XjgReXRas76zUjkMoOopYgmeC5p63tJUdhDU7uTtUE9ixMwIy0fFR75XYIdQ
	 YovZhptIV05u6qS4zUMZK5CZisbJ4Q1Vgnov85GMoNYXtknu9jQONzDe46EpOCMRQ2
	 8kczOUKwcgQdCo3NzuV/8y4eSUJ91AfID/RHFRQSv7IQ7yYzV9qwJ/4bomMZZpZv0u
	 3K6Lwa7Q1HFNsV/+Wm7BJQrrkb25zGS0DjXk6SWfeCcnxwB2nfezRRbMliV8zw/8KB
	 a56JbfnYxTQU0DwyxN2N0YNMM+CmUKjhpyzjq8RzAPc3GMUTN4MWXzUd2hml3Ljevs
	 HxwrOb+ypD8RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4A7EB64D9
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 13:49:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168683694869.6558.6350545292610003045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1577b5c54f0e8a76087ea33ca0d905add5bd124c1d0fd45df05e6e69fe61300
Date: Thu, 15 Jun 2023 13:49:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686836948

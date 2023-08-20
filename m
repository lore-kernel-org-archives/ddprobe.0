Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A8EB10F1
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 07:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2404C433C8
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 07:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692516848;
	bh=EMEokY2TvNR0A1w4UuQlTGNLLi9nCyY9t7Z0F41Kaxw=;
	h=To:Subject:From:Date:From;
	b=HpAlTta6gQ8ZHQFjhXGd25QruWWI90VaP9+nCXg3bE+0m1kSBf4YqvDa+0UlLeuRt
	 C+6g7h35G/dpwAgriwwjsU3VMkrHsuSsQWE9W6vk0IIZIl/CeNbegI5psgu3xqVzSs
	 GpSv52Kw7M033gQy2HtmW/RNaR1dIsanmRzD+tbDENOefKyd+Hw/sauUqMtQLYWrZD
	 GigXyp9VQYoS7NTOngLl1N8qtBobPD4bVy8IEK4dSfuqHU8bnY3TcGHZMIxL5T062Q
	 +7YPdOaI+VulmmWzVrwTEiiDKl5epDJY2QPmN7IhYm2n1+L+wexSBQMR5lDL2J/j5N
	 V5Ys7g43usi0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C17A5EE4993
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 07:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169251684875.557.13672306446651415115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43ef51d699959fe329153d5e0fc6cf3e3f223d8b5d8ed277552c6029529c4ed6
Date: Sun, 20 Aug 2023 07:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692516848

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEAC420E3
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 05:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78B12C433D7
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 05:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665637253;
	bh=T6CproRfpCDSzd104YbwYsy3/Uk/Qpabo5iucm5ZWAw=;
	h=To:Subject:From:Date:From;
	b=gtjv1jS84SL9wBiNjL8eWBBD3S24nNcr9srr6QxjDKUm2H+KQtZ+hfmLsaaZJ5KV3
	 8ZgclvI3cr76q8TvNQVfeE5yO1aDdapbWgW79SRqRuqnvFJrD62NpcdKWVSdDMi5t9
	 KGyItYZfqh9IJR/bGjXF0kqMqICKhrGxs9kg8R6b8kqe+7TjwtXyLYhFmF93x51Ofj
	 j426GhOVtMi0+4IplbxgS295I2NxNSR4jIHxoONv9EfpOaVPEuIa7NYKrJE9oNQB7G
	 EY4Ypcys+yHpIaUiIxlvcxlfcb16wzEZe25OrVpNRQZCN4M+05N4ubyupYgtOtx/gw
	 Z5hJqiM48VoEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DD57C4332F
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 05:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166563725334.2033.2670623879928395521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27bc50393f6d17f2442aa58281342872168f7ba8d526ab39fbcddc06591d9744
Date: Thu, 13 Oct 2022 05:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665637253

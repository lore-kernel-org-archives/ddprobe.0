Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49F4620EF
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 12:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED096C433EF
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 12:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674216126;
	bh=CW4AM/n7uvtGG6DEbvWGw6uU1SzByxoWV6srAoO2d0I=;
	h=To:Subject:From:Date:From;
	b=jGkWx8IHMLcXj+qO67yXWPlskAaX6bl5Fc7UinzuYVzIrdCU970jscnV8HMo8w7ZU
	 mo/gXojB+Bhs50037hfP5HaSqcTkg6DdHOMVa3JMQLSbvpgt2dTXNifE0ApsLNiCX9
	 tDkBPyp2f7s3035u8lDS3j+YXjQ4rZ5ol0RPvpxK+gY5l/upTqGovLTcGPIlmZAq8o
	 4S69c84Bud6msnE0l3qEnZb0nfa0LbnoMSeohpXMQHMwhF7zIK5i4xLF9zk8cQdSfy
	 TfgQb1ZJH7fxpZS8Ilbd3TNEAIjQboGygLkiBW45k7vcAd+ZW5hoGn5w5Hmq4w4dQ2
	 eg3Nn9eAux6gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCF56C05027
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 12:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167421612582.16504.11004906192456023782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 630cdd396fa2f13d62c6c1091002782368b6e19b702af6889fb460d97ef73f53
Date: Fri, 20 Jan 2023 12:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674216125

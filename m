Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C466FB1
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 18:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF23C4339B
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 18:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674672785;
	bh=4Wj8EWju4axEGxNs1RjyUDJ/ZJG79BBjTeEu3Z8SZFk=;
	h=To:Subject:From:Date:From;
	b=a+VrQwC2yglpEiBhcOY7yJbwYm3Efa05LinJ+OScC7zBXUQN2ijhib6kpsJA2gdES
	 PTAt4h4mqtgRxtqSTUjl2jJaHDNJMKPXXvNPW9894SszRiXUKV6CLxTeZFkXdHc+J+
	 oZ2qYRW/DcLtwVgmFrtChldof/ZW28yGjXUqcpkuUvVrLAf9f6N9cuvWHQBm7fkPTi
	 BQi+ihU9XsLxQMctfslqymYvms9nvpyWiV/9FlfWBFKqBmdBcMPNpZKzcxvR51QPl2
	 9nme78MA1WEdL9Q4AI93xRf0k4rexC3Z00TQiqbbhfSYsBlhaHVYWsC7QUBykitDuj
	 YzpHmOIJ4upfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4F08C27C76
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 18:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167467278573.32508.11566694862979249496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76dcb10edb08a328e70606fcfcca49975c99d734740d867362d73cf7e0570b0f
Date: Wed, 25 Jan 2023 18:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674672785

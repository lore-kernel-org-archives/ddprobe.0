Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B33D538A
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 18:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA573C433EF
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 18:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678645625;
	bh=+1ElRUO5xmEw0FVNqzVVq3i31JxJZCboQNVDLOBQu24=;
	h=To:Subject:From:Date:From;
	b=jkaIoDr/ZPdkpXnt4xZMXmb63LiHKWUt4p4BFtqLVtwN9bOMuF3VeScBwQwW+WbTF
	 DnBrESuvxnx85JDBHUCVpL6lU5Tk1Vk1rUP27HFfSXmuIwAqdFvydl4s1PV/RCBk4V
	 ZoY8aO/jETAyrgDyQzHuvl+/mzGN6zT3Y/79VAHfCuQ024aRJAMQIKzHHFTTuiS3yM
	 FAstmV1LA30JMQVa79EE56n/iNXRem4/GT9u4WVAYC6GlOkBmZogz/2eNZ5+VBexFZ
	 C+D895h9IVjyfzJw8DtG6rmja6hHBHJ0tCJXfWgZWSAx6Cs7s5L9NC019QlDKJggRu
	 uz8gtXExZ37Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA5D1C6FD19
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 18:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167864562575.12498.140963640390660353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8001ced00f732e19de2e15edc527e0898faadcc2ab4973aab6567155a1e812ff
Date: Sun, 12 Mar 2023 18:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678645625

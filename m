Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AF0D398
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 02:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC7CCC433C9
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 02:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692327248;
	bh=uPYTJdww9wMwJ3S5ikpheU8VXpQGIgDAJCUuwq4+OvQ=;
	h=To:Subject:From:Date:From;
	b=eQ1AswPyf0Y4BFlnS9mZLxi+7WvSPB7V0sVyhdpxyxjiwaOCMkBvHt4tCPTPJqeUD
	 IT3a66z6qmxt97RA7RdRDDtXwcxcnWRSr2e0hu3/HVy5u13phqPtWFN8HGAaFsWCmb
	 bJl6/7GsAPoPgf8c20mMttcX2dcJ0JowZrqVL+yUImfrXyZg411XIGUEAVxP8Brl9X
	 guW5w9shB/x10oThor6FDKqDEu5xjOxBo6B/ktRk+uzaq35Q4mACRjxUhG0sKIYfY6
	 sVc/gHyWrZIJy6r9AKuaBX7H9nxY+x5r1rTVpLbOOhinK8wMKyh9Qo6kK0f6Ai+wlL
	 SuKVBCeeeSjPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B19C5C3DA66
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 02:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169232724871.27837.1260964274092247948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 837cc74a7cf31a3b73994b3f90b0c1ce3adb8739acf7e5fd36bc41f237d041b0
Date: Fri, 18 Aug 2023 02:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692327248

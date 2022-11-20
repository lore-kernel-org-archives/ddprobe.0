Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0576E80B
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 20:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 91E16C433D6
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 20:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668976854;
	bh=GNmtbf72SykGWEfXvkM6m3/8Mqpfmdm6v3o8apDOtXE=;
	h=To:Subject:From:Date:From;
	b=U5rRy3SY1Zogxk5/8JQ1aUMMoyOkS59QPUS3tqufSAUZZBb0nEHZKzFBzD7V7KMKp
	 SN9vea83HBDO+OYv+5pHUzGNA/L8udqhiMLjvJB51UQ+tiV6xmrO9blbJJ0oODnpke
	 28J96n+zzDo+bqrWz58TzGAhb8I07N41Ul7beZPs4ohoN9Tjx4TESJgF9+cxpKgsjp
	 7GMRbykvOYhywqKeoPhasBl2is7jdsCv+Wycp3JJv85ZsBkuwkmpbCHscDuILjRlRh
	 40xVZDgTcCRw4hKaCrVnjrJWUHCE6vbjIY1D91uI5n7JmSo415QfEAceThK232xoJU
	 3xUnHU6hDVe5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F7D2C4332F
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 20:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166897685441.6851.1306120050954574572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 132add7f2875776ae679ce9abd974146b6b7bafe7495a0a02383052e5a570eb4
Date: Sun, 20 Nov 2022 20:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668976854

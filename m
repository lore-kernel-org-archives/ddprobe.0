Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3EB88B38
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 05:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E18AC433D6
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 05:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663911053;
	bh=cniTiXci4nyVrQxGrKvCFDQcE5ZRdwByXbkrkwpuw5c=;
	h=To:Subject:From:Date:From;
	b=bxVaeejl0hmBwVmlR/5wk7IXGVkOcwzt8abKRIdvkjlxs+NKP52IEKoXkpuYrqT4s
	 fEzF/u60mYBv9kVrK2MBoP7QULlH17neuK3X3dwUEYlvwZc3ULi+TJ0INMcYJnX25n
	 xENl5Y2xlZyKJf+pzvgv/aIEyAy8BautttpdiFHXyHSLfJ9yYF8lthjf/ttscasPid
	 QxwDa9/Xfx/C16iv+cy2mnOnB/vtFijF7ijVIOKkNsMyHqWyQpZoPVu8T9P4eke07+
	 rSMJKmZ0vjyO2YmnX7UVnE4cg2eqrVpwYPfLo50mkSBd9vAT6aGzfh3cm3RcHmWJvH
	 Z1ivPZrx7o3Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53B53C6FA82
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 05:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166391105333.3340.10994062794931741923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d238d7b20c5f2723a5b2cb12bbc73caf26081f7891eeae6df4c75e9e8f0b320
Date: Fri, 23 Sep 2022 05:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663911053

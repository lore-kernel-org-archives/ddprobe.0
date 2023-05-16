Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B83234CD4
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 17:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6364C433D2
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 17:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684258385;
	bh=EHiQihkLI92oh5SqcEH1jkGikS5lPwR0oeGAmSu+igI=;
	h=To:Subject:From:Date:From;
	b=rpemW36fVc1PgJWafpA1GdGCNxIKrFuJyWcJhf6kS8i17wyOinn8wnoiqEaBYbpEj
	 DYbMhcv/m4TkDAPu5HN+08b758cfiWM2zjjwT1UNVn4tBJ4UEQ99zF58CU2AZayrGx
	 df/ID5OSFEI3/H/wZUPpFu5mkanyYcMXQU6sZgv3NYYRDDLwHIgXsQZ1oQJyViRpES
	 sQIDvYnORNB9UGBNNG8mo3As012pLZsdJ1x5uWP7+MVnm/5S9sseqwUy4yMiVMsgQU
	 4KFECRj5m8vI6cgw981GzNLnxeE4RE4sdqgVGB+mNG/oyJME1cpFdKL0bHbFbe/ech
	 klfhlzRxE9iJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8A03C77B7F
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 17:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168425838581.4079.39253924274003584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e7e0d03f2f7eaf275d9a9a41530192a5d2476a7ba0eac1eaa192c0904ee99f7
Date: Tue, 16 May 2023 17:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684258385

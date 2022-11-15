Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C49D023C9
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 07:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F06CC433C1
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 07:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668496254;
	bh=FsOiPHhlEh1LITzGN4wLnugCV0Kd2yR7nu2+EQWMSXs=;
	h=To:Subject:From:Date:From;
	b=gjEG3ZYGg7E3IwWIjV4a3fY6h1LLrM1DXmU7zVC4UcE6F5LB2Zhz2gdoFRIbddJkg
	 /9AARwxYMNw+n8v0taMXS8YnkQirzaghmXtvCxqfusRRWBlVWItA0EQoapgGEai9m2
	 AEcSNJBLIBxkuV/YJ5e7NaKTDApIS1rHKfu3COjRuZ/b620+MymlJ/grYRnoNVPf7a
	 SpkbA9Wk2mehI8m3yWz6iPBd39yXtdOGZG7LdPjfhJqFMGw3j9gZyOiYC9OjljL78N
	 k9XyMKGP3JKQMpYqnRKnCxeCbRLvhLbLYUAJrO6WneBaOJ8Uqs141QJF7brENVnWxs
	 SpY4pnVpIi5bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53980C433FE
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 07:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166849625433.1733.9203117123066627953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4cd4f24ce686664de8f2efae6cf3aab02a38552d009544b14930a645b9f2194
Date: Tue, 15 Nov 2022 07:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668496254

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C99AA139E
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 14:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FAFFC433C1
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 14:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668522654;
	bh=bJbUGy7Kmf+iMLhFs2Gp1OFV2F9il6ZkEhGrEwLysrA=;
	h=To:Subject:From:Date:From;
	b=Ez1YJhFHVQcQbtM3DQnHQ0dbTeobka9W+EKv5l0GuH8m+SsFDLP2Xrdcha+K7cU7f
	 ePJ1VpyssXeQYg7LCyGWsQDFDyeaGRwQgZMnNVYTb335MNNsXDwuLF69WjZSbca5BX
	 WCXD/qazsLBAjwTjB1mLC++b7x4dmkxBXEpfi2ASO+OXSDCuvly/FjceOzEtGUBlHc
	 98BxhooJv15P1Bp9Xq9fNz8GgXJQP5bGA6RO2GI0ryzrstxJi0NhfSD+ZclWxni5NJ
	 kb5i8VHAVdqQ4h9P+xS90lRfccdzgCzkvi026eicC/ZXgeSD8/Z6PI9KCeBPsMoaPF
	 eSMr5NrKTMMww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53D3EC433FE
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 14:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166852265433.3294.12416520756610259472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4603c900ba16fcd85d6c16a76957bfefe4abb96f0fa45f5d9b70aea186b75eb3
Date: Tue, 15 Nov 2022 14:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668522654

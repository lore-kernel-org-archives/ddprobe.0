Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCC9F1FA4
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 10:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A1C7C433EF
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 10:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671187887;
	bh=zT6Jycmh6zDnnEzGMvUN2EEvz0h/4zA1187Np571aqE=;
	h=To:Subject:From:Date:From;
	b=hnv3/QxcYmJkajIMw6M+vzd+y6j9PVBAaKGmXkrHe6asmhnvpXl9j5niJ9irESatp
	 YALBgmQtJIrHVqrT4pUYn2GC42C2aZvjCHbgysIbQXq9C7LuKD/C3c7q8fUPXkcGyl
	 BRjogEsvtz8mCySpIGRJAx6AGIjypPf9OlVKQhaWE6G4TZh2P1vlTp3JmyMJDskx1W
	 Vl63k5W80IKxqtjZCo+TDP83UUacr21e0Wf5hnhd12I1uf6/045VeVC0cRJ7sAwUpD
	 SjlRyPDvo7261YqdpRmLFvw3+9xOpMnG/0znmv1dSNVQ+IvpEV0QoXOeY/DDvVAXP1
	 SLhGE+fKCmVTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D4E5C4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 10:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167118788737.17249.9306635435422277299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d54f8d49ec080bbe2cb82c79323ffe836501bd6cbcdfbd870a074dfc52e63b7b
Date: Fri, 16 Dec 2022 10:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671187887

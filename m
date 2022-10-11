Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA8D98F41
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 06:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BCC8C433D6
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 06:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665468053;
	bh=ljkvRnEFImj/0UeoWokPFGo0JL66opDaNiFwrIQlvPg=;
	h=To:Subject:From:Date:From;
	b=UPLCByxYUmlB3uAcwOLbXQWu0aUCpEPNBbWq359Q7M5geAZsfAWH3iB85Q95Q2qdk
	 1Ksdgnfn1/H/oiFIcVL5PG7nDCBYuAmdUpwGsipCBdWkYmVB137jqdhQf7+Mm6cbb4
	 /DbIy1zviyiRnNhkwicTSgGf9vHx4KDySAajr/1U3+HwoFJImfKb6TAVd3J9nrc498
	 HGWfecdodGuW9CVP7yhmOIHOrZ+HrKbm5AK52K+WK5yBGeF8GFXNSDEiKYS+bWKaFF
	 b1l5ryBaQXVuwp2UfuiWSy56PcwmmwZsXpWNKrSXX6Xca1vAw+1vakvxCkAQX5MgK6
	 fFRv3FtILOizg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F245C433F5
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 06:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166546805331.28810.2135752547082587995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6bdb57235c601ecb6ea73c438300aa8c4e0eef1b0a27a0b2b171af6ba8297f9
Date: Tue, 11 Oct 2022 06:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665468053

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B43AF4F3
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 18:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D51A7C433C7
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 18:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692642248;
	bh=SyPJqPISiG01/aUB1u3jDIqY6oxjJ6DM8TGnSrCA5UU=;
	h=To:Subject:From:Date:From;
	b=cztLJvRfrDdjX0BxtfF4odzhwuhk9IJu2TM3EIpI/zBlbLyjeFtuhzRyzh1SKq5qd
	 5h8C1KYSe/4zUrbVlszooTOPuS1N+FtO0RI7yhMZZw55YIUY8O+7QiK1JG35bx3a4b
	 NRVyvvGZtxRl9DXkfcLpo85uwQCHdhHRy9gw2uFs7w7DBwPPyBlVsCZ71iRM9dust6
	 UC5jl+N9rij1zPFaPKrKaA2apYhjYLrTnwZwKJiUXbYZ8O+3eHrY4l2QfkAcrQP/22
	 yRXIzAHsBwXXywYTmFSAOO3RWe/1ylOGYr27tce3oymhGIWY7erwXAkoxgmUbFY6Mr
	 20Ar1IJqZNWDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B318AEE4993
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 18:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169264224871.17217.3097350564901112830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c5cb4a604c28dde6a727fcf12e09bdaf9c8c2b80cb5d70ceaedcfe6cf0c8217
Date: Mon, 21 Aug 2023 18:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692642248

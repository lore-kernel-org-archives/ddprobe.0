Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C32FC161
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 00:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66C8DC433C1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 00:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666915854;
	bh=Y3c7oE3HvC9rKlM5qI7lRMMzGUOuQjgIZC9/gPLJojs=;
	h=To:Subject:From:Date:From;
	b=o2wWkmO78idyuHcTb9iRViqwjfGAknbECqowehGF/hl9c2yXHDInPsOKy+eTZ7oMO
	 TW/9K5js4cIMCOeR5cXUXL0e3ZCe8MJB40ByAEvOZVyYILt9tMNcS8a4zI83T/HtYg
	 i0RmUHg7nAuxRWG0L32NbmnFDzhuyGmKegbu59XH4PLEYeyfOVJA3P/RONPOaXOj01
	 FMhukRaQDxuOAv5I+TZHT45ze9EepUproC76C8M+/xoYMXWyVreVrUq4nbbVBy7tL7
	 lZFIGqLI60fYBVi98JrTse9gAo48fgS6945XObySZMbhaOVE6yS0kroFrOKWHi5K2h
	 k5ADy+rj+IZ6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52C52ECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 00:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166691585433.3004.3695435998022519473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fa4da82c95bb13331c3c1f7cac148c0e269abe270e76a6a0f6409665381220f
Date: Fri, 28 Oct 2022 00:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666915854

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCAF042B720
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778771435; cv=none; b=ux/WxQKJysWiPFGpEUc7+pFZU1Ya0hZC8rmJG3chtUVH7aExarq38bSBBgFnSJN9HC2LtF/1sp6JAcaWiFTOjE4M35MdkY4NdHkPgj9uEfj2YQGc5cwc+DxSbdZuhd7adoUHHcJOhyxX/VIzOHquVJDjhzjHmaA5T0wYyxsbjp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778771435; c=relaxed/simple;
	bh=bapkamURB37F1w6vLF3Cz7KkoeR7ZaQ1bvwzp6LxRR4=;
	h=To:Subject:From:Message-Id:Date; b=n8M3xmgclggHViVa+egcEFVTOnCwk+/uNrjjj1+H6wM6gWGejZjqVNocoyjdJqngOLA3S4XBYBXvK9RLEK3HwolDckP6jlYVOyC93E51y3SUYoWLllc3wyMgtwOaOW0mk5SityMY5N5qU7lGRfkcGuKG5BzUrluSC8FzB4TIVKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NyVDCP/V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NyVDCP/V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C018EC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778771433;
	bh=bapkamURB37F1w6vLF3Cz7KkoeR7ZaQ1bvwzp6LxRR4=;
	h=To:Subject:From:Date:From;
	b=NyVDCP/VpvoWWRY+LiNlfNRn1CZVm+RC6RIX4xU4dEKjTs13TpGbzP+LZTR0oduif
	 pyMzTpN5hxKh5rSIMSOi/8djRyTBF4z/mD+ekq8n7WaxVcPQCNvf8BNFCxZSBqBG8J
	 hqSXJvrVD1Cq6Wg9xYkeKKJnEOyR1lDX5MT3dYjUfHhvfPFylz2gWtnuifg/L8T3rH
	 237yWkaVbK/O/CgqTP692dQCKach9Jbb7JZ5s48W40an9Iv+F7FYK/YSg0qKbV0aTw
	 GkXllIPmXVD7tjO4jt0sYamDS1KkdNiEfvktEIBZ4hnA3sIiMobGWEI5EWX9K+53Pu
	 8O84kd3tKsgCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE861CD4F25
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177877143369.27845.6411910551354748223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f1a1c80b173904680823ccef135ac241bcbe55ab886561bd15da9808f10b3e9
Date: Thu, 14 May 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778771433

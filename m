Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57F7B63B4
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 22:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9859C433EF
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 22:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682288465;
	bh=Gi6uwhu1aKKcR4orY+crVxB8AHItEEp6Gh40QG5dn4s=;
	h=To:Subject:From:Date:From;
	b=APKDG6RmA9cruAyfNzbqk/P+O5GnbnhaKXGwre7Jr4uRrNlkTtEB3C9r18IlmjOSI
	 1s0PJm6I1vQCOg4uzvmVfpW/9RaAYznwvppTwzTURBdacv16xRN3EhNA4sCVtfq49o
	 RmvC7HCRWj6isLF/mpD6u3w7uABK/0Z0u3AN8fNxOcW/CxfrlpD1UTS7K1F9OJFzaY
	 02ptVj4dlu7DO4+/LfXUTj/vrECdHp3Q0ZfoqPsOlvte0jN6BwOBGW4/J+8KaEK5WT
	 64uVufnV0W3eclXNTmhUDWYNYxazf58Z7ZHePeZG+B8VWVNHIGruKNKO9p1AkJNJI3
	 tT8KGUOU3BfjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8B37C77B60
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 22:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168228846580.20749.8801642361443204107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a3f3cc45af35c90a2a407cc511409319bfedfeaea9dd0bb3aad97ae711ffb58
Date: Sun, 23 Apr 2023 22:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682288465

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D5577EB
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 13:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA19CC433EF
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 13:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684675926;
	bh=6uPaWUX2nO5x/DtwhkpGwIQBDQdd5YSSuQy5vX2/2z0=;
	h=To:Subject:From:Date:From;
	b=TQUlQ/i74QSFDmIV7FnZUlMCoqVjh7UZP550ISz7yVdMEH4UHjEMsban5HTjIwFgG
	 mNYhKQ93ENEgN65xJ8Oz3vdkxGJwBrUifIr7gCVhLIqgneD1e0EO3YRGZ0gDW6ngGz
	 hY8BGhNPwnE+hyk4QO4gUd+n0y21N3fQZzb5D5rPjxz/Uho3UHt6ssCrlqL+nD3M1p
	 svz9XsOhaubmuU0F9RujkoRFqOXXznftdrwO/JuBENRwxfPu1X7diLgTsergTqXNlF
	 NXhxohofn6kmf/2qzsyC2UbpP0fAJvuSYvyRm3O9b+5LvehC84qjex7tnJoMYq9zSZ
	 jwAv77M749eOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB0A8C77B73
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 13:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168467592575.8003.5665945957065802233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05d73cd9e20fb7a1ad3097682c35a49383b70992b5f6dcafbd8f89b2ced972e2
Date: Sun, 21 May 2023 13:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684675925

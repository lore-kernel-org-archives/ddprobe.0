Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22E1C17FC
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 02:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YZRclIwA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99501C433C8
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 02:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699756696;
	bh=LN+T2apcueZL0HsoypWt3unJzz9KD8fNexWlrTqvlMk=;
	h=To:Subject:From:Date:From;
	b=YZRclIwAzX5zYBDDBRfckagsQvDpbHGy6zMmKjAouc6bRWer9lRoH+gVXsIfTaZ2r
	 l0bir4+Sx8bvk3jRhPusdCMBzkBvrq9rB/hCKoQPUUhGOrOU5hleC0YB6SY0aTzXdy
	 LXpewEhKW933rXfdEnKnuf/SLganrUwewqDH1vJK9De0FJlUzpLAwUlr+0SiCtBIkH
	 02eJf9l8BO6ykGBqT+ONNQAvyuboP1aG6ib/95SyCz0Xm5OECU+7X0Q2BDRZR/DxYZ
	 apSiesyv/JPYyu8ZYZuM0Yzb1EI7hDUAiChDi5r9/jk7ZkFV1CNJ3ghH699Arlr4F6
	 XyRDtiXUg9/Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 785F3C4332F
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 02:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169975669646.7106.15081622146009811994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1bc08beab479746ae0ac46c273dd177837046e3a605f81ff9994ffc967ac5c2
Date: Sun, 12 Nov 2023 02:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699756696

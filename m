Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C120263DE
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 23:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C5F1C433EF
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 23:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671406287;
	bh=mCAQ4IlFPH9ehWyokGgT8isVUqlatdm9Kdu/sb2sONk=;
	h=To:Subject:From:Date:From;
	b=nBLQ2uFKg3JfOwOfYORIou5I6+nVgqjvwdKC27S73xJsLesdgrILvS6R0ILiRUjlc
	 DIg8zRICGKRKjnA9eBlk8sRh7jei6Qvl66tt8FBjWF088avqr1DaeQyoTCSveJqKyb
	 69T+UQyEuacKgL3YxaBMgktD0iBCB8cuTDbNv1KQG6oK62yvwvWJqTwr/WZXlO4cYc
	 FS8KEY+qcqI9vapqB9T6zQzKa9VKYLeG1hL2345z6VIWBfHVtms5WEvsOkxt2aRQgd
	 Mo3aHEY8QRo+sgRZg0Y3fm0Zf//tLWqV9iHQ+0ipgtqoaFzV2/VkHN/SGPf1qfQnDu
	 tNns09THdYQBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6436CC4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 23:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167140628740.6126.9676817516693027538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bca1bdacd054358eec063e449ee61ee3152afd42a7a9d6ef7fc47b555ce6b70
Date: Sun, 18 Dec 2022 23:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671406287

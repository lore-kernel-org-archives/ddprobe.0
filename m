Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D84B17C
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 10:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C7F3C433D6
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 10:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661682652;
	bh=74AwLgRraufuXfgx5XwkcBadSf1H8dBRMYEtQAzk2ec=;
	h=To:Subject:From:Date:From;
	b=dRWlclzdNsLX2KnXae0fmJ61i77P2XNgQacGe5hNxUD6Pp6py/Y5KMdQtHFe5VDLa
	 7Ag3yAeq6qitD0BH431sAM7WpjanKRprxbSGjxuqHlr8PDl6bZPwhN4QV+J48WZjK/
	 yTd6SW151eLzp7sdghMEHwAsZM6ckaXJTbtCOj0It5VdcHeng11B0+S/VZJNl/D1qN
	 dCOxsRH0CIFX0EV2twZUvigXBW1o1E/tFj6HsKLpgc5HS5RMqTdLan8AZyS8WbzP4F
	 +rLg7nL52RvalsHrHvLJa7Wecs/dTZo+bnPd5wxH+G2FLgOYcx/OKYGwQZpwOyi4fV
	 DNbzSwbmzjwUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DB9EECAAD2
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 10:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166168265235.1341.14216265625999285300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 203d61197ceb21a2f5574e0764c17892f61c85db04782f2ffe4f57946634531f
Date: Sun, 28 Aug 2022 10:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661682652

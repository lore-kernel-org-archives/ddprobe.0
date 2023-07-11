Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FDD01DDEE
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 22:07:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5918C433C7
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 22:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689113228;
	bh=VC9NBDIupiEar2s+ZEhWhDJivW9IRXwkdQ+umjaEe88=;
	h=To:Subject:From:Date:From;
	b=i2fvY3sjFQY5TUhpGHU6n5cKTjKLwC26ucX4HQ7PzdS/T+Jile2dRzgyKOFyz87ts
	 EpY0q/u1ONR/cDbeuVoKJm/ll1VRrbEMfw+ZWC3aJ2HVxlhXgnZKW5BNsezyZ4cg9Y
	 REcTSBJ8dp4EmHfLHF3eRfPa37vPAfkgr7KN8FGrtZeVfr5i4dmDmi6kqiVdC4NNKr
	 RPvqmnORCHou/NzZQDOvUnNj2HN1k9sfWdRJ0Ys0NBZMUE7hDx+J1eOU6rBiV1sNUt
	 IoHJO7VLWlBxaqae90UQcQL8Bk3xPHy529I+7eXqHWSmwMN0IZ18hJYv05m4DtidEG
	 u7xk7EXs9PrIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9642EB64DC
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 22:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168911322868.28703.10113299360968608301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b00851cc006a4994a8838729a0437ebf5be2161a8180f0997c6ce0ee54f61e0
Date: Tue, 11 Jul 2023 22:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689113228

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BD5B290B
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 09:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D32C2C433C0
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 09:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687944188;
	bh=0YUgV7edpy8yacHahe57LLnJ7RQJekK3YQn+Co8m8Xg=;
	h=To:Subject:From:Date:From;
	b=FD27G0i+1X9xRmA+Doj9kxeRnuyMShZZyTMr4kMtAq45iRGieqsXFWoNROKDLGHqL
	 RevrxVNPKlSD2ksAZNVpP3LTQbQwyIKAOTkJA48tdXo3ITLg3ZKt3ZF6hYSRS17fQ0
	 1/LD61TsDHQmy+72ZSOhw7btLiIX+1x3pVfaMnmtQmKyu8t5Afuz+K5J7WX9wba526
	 jJVclZx2y7F6oBituKKQN8UhePTic0VOH3Xq6Qjt+zVmcxhTZgQpv2w4st/zOtQplC
	 vvawc5ctxCmC84INqUdig+N4v+hZDZKKIx5Ke2+UA45N4zmSyzHRm7zrClF7Qd9zeX
	 KTMuDE6WeHphg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3231EB64D7
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 09:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168794418872.5789.13819668601500838733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59d822e5185e02a877170fc8f7c17d2b95c0814dae1da2f847a530d95289637f
Date: Wed, 28 Jun 2023 09:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687944188

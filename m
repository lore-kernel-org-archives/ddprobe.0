Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6E757B
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 11:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BFFCC433C1
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 11:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666439453;
	bh=boxW6vyhaHejd+E1pEPoar1CyH+b6ZUYjtEZtJFlPUU=;
	h=To:Subject:From:Date:From;
	b=meLFoQhwYBXcjXVt7AUy4YKB5v/erAxmCYsJWiWgFRCU3qfOjzb8MrWt9LJ7i9Vvk
	 Pb8uBbzM9BkhdA+oYBzRhRaAPkIL1irUyFKNgmc8a6QCmTM3K05p9Ul892QiaE2h70
	 w4H/SBeSNF8OkC3eEYad0HAE5Ay5UIPsBhRamDzzzgYSfIQ3Eif6vFfy7+CvCQ0oyt
	 f1ct1fAxKthHT9DP1dL7F/M6sTvaNCAzdkdq2JfA9/X2njympmV0rCqhb79ZrH8j90
	 dbv53EPPYdTTdx4n59B3N7cyCGDw658rMvLJ/v51WYtBS16hXbhxxqqD3j4VZ8heIB
	 Tbzag0Xd+k6pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 544E8C433FE
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 11:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166643945333.13755.10999036194572656691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7056d515f469c484d3fa7a289d28fbc77e3c108aacd02cf0b10463318b998caa
Date: Sat, 22 Oct 2022 11:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666439453

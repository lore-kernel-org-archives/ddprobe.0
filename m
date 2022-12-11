Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE42C2912
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 19:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 836A0C433D2
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 19:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670788287;
	bh=ApOZmTouviXJLKBfBSuOjVAm7m8bKU7JizhN8jgZ4X8=;
	h=To:Subject:From:Date:From;
	b=uufKsd+plh9JVSkxZeRIX73k73NZDtV0jvL/7ajH+OXNB+OGIeJ0EjdI+iapckBJi
	 R0+q3Scn01L8JVH2AiDLj5gO9NfXIq9mypLWSCVj5AuBtyawJJgWx5fkr/Ognpoy6C
	 /jCrLsA1259tELxKsX4mdBku+sJH6/D0CQXJ0s645rPlQjPRciVo6UGP1/xE9Q3bCp
	 nyFu7s+wb3v7Be6rQZjQw9aGuigrIiYyJLzrCPR6tGfMo71ImX/AASkBFJqbCK+dCi
	 TNY4hhvTBC+Ze7d7d36Dc17Dr2tLjAR2uSfIhuILOmR9VImNHjmOHgLrscEuQ8wa1u
	 HPhIfU9HimYUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6680BC4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 19:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167078828741.27047.15878903343458731661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab689192443b6e6888cc891bec53009a9d87132a271c9bb8875ef48bfe7b734c
Date: Sun, 11 Dec 2022 19:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670788287

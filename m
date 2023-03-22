Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A65715BA
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 04:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8FC4C433D2
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 04:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679458145;
	bh=/H47pKkfQFWIw3FpJPALlBcqbUM0W40zKM8LHmf3S84=;
	h=To:Subject:From:Date:From;
	b=i/exxE+xlYfUsmuNuw2FnCnN9AFPCZc22bTAY7sqKadh+bpABcHRfpWWwnMQAL/C1
	 EHDf+fCq7mwDjmBHKibyzaoRrWF/t2tHpOG9Rr03IX6WeLppz2hAIi/mWewRDk55jg
	 i3iY1b5hVmaU7vi1Z0rAShpEIuA583E32xQXT4SL8C26Tt4tkge1n8D888VDvaG9Bh
	 xLB/INt5TtZZBnsy0xycwYrROUceq/sqhLhK1bKI4zmC1Hgj3qKuPPm+1c9o4siRRD
	 bs9PumZeEc/fgYxXv1fRQLrDEovcngHXlL9zNYZsQLgIzSI07KeZ6Eqeob++hfFNwF
	 7r0M3vpUVn3hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD6C7C6FD1F
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 04:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167945814581.7262.15290674227348234382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6d99cd3b893f552d5f7b8c4bc809c8e2ed507d562de1c09c9113d9405878757
Date: Wed, 22 Mar 2023 04:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679458145

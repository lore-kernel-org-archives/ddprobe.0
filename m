Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2828B7B
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 15:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D090AC433D2
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 15:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678548305;
	bh=aunvNhdP6wL9tkwxv3lUJ2PVl31G5Clj1GJ8i/jiUNw=;
	h=To:Subject:From:Date:From;
	b=A7smKizWFowf0BqYNZuqoKCzDXBU1ggPA+vIaZLbdvDw5txS3hBwAuyozerDP7tai
	 vKG/2yHl0Go1aVxxznRGrwAjZg0sClT8rYlN8lsAQVozUOFapJr5tk89xUcQGDvzUd
	 OnWHpSY7+158XqljJJD49QK4jh9crsuix/2t3VeW/OvkG58E1zSTLY9ezXDdzrqDjJ
	 pPCQBdE/jyIfHOJuw78qQWnUBff7kmxNkn+iM/TU+b9qfuBDiibJVlzAsIbaISJbzm
	 NS9lMgRSMdK1dPA2OjaBjtwfKjEemgy/bwN2dzzVnQhyFOuZBAF9SCqcpy9uNgyZP6
	 4ppvXxvcGJtug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6A28C6FD1C
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 15:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167854830573.25177.8404501077814081973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b94dde72476e49f4d8fb0638520bc7814c959e54dbcd2b490b1abbfcb3a399e2
Date: Sat, 11 Mar 2023 15:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678548305

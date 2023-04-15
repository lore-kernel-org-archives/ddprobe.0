Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 453212F39
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 23:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEE12C433EF
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 23:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681600505;
	bh=/eAfpHl/OD1OiPmIgixHtOtDh8iikbucwTdVH81cEMw=;
	h=To:Subject:From:Date:From;
	b=R2vELQvcHaoATy1QY8pSyzcXYZGRRDBF0BQVOPArLmyOhZtt/j//ZR9s/x9oJjt1O
	 bKXWxP8oROBn2ubh/wydFSqlr0traF+HT62POpMR8EUtfDWvEO4KBWDLFhj4yuUCv2
	 vNuY1e5hGjqtZbwlQuaTOFE4mXgquNCz1E6mr4P7pr6K2d+BMrACMaDoNj8XNyPTUX
	 IDRpoWXvO4TRNn+DucRSrgwOlVM6kxCS3Bp9Zg9PZjpMhqE25Hs3chciTTY1uvqso7
	 ui8F1aoBhSyx6IbqYCsL8/8LQ/N7Z/A6TeVcKmu+uShT22Yq2yEt7NlShak4ikAQ5r
	 fwWao+o2qC1Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2349C77B71
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 23:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168160050574.24927.16361626974453989249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad71bbcb88e7681db8a78ac25394876e1d1f507a8bd8519208a4d05974083520
Date: Sat, 15 Apr 2023 23:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681600505

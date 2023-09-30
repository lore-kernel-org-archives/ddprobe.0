Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96799B678
	for <ddprobe@lists.linux.dev>; Sat, 30 Sep 2023 18:26:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE894C433C8
	for <ddprobe@lists.linux.dev>; Sat, 30 Sep 2023 18:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696098369;
	bh=XP8vp6sBFMmBLEDZ14A025LssiEmL4733TUElMTHT8E=;
	h=To:Subject:From:Date:From;
	b=U6vDHvsnZMdFWZRNDCuJLewYWxG4JDQD0ix2vbivSw7C4JoP0prYwCFe6ee4wXHcv
	 4DHx30nOl0qfTSnDmgFIvZKjWBFI+hMIibnAvQ32UvY0pYY+kTBv+qdC4RoyaG7Lh8
	 ArvWmMXKI/smRSIbeQcH7zJtE+0ebTdyefh7yu2Beuyr0rb1jky3BWBIhFcAK2g8Xz
	 9CTe3Su53skYhQQAqN5+MQUqfOFdvTSfHho17UJoZ1paG1SZn2y4ldXddguJbAgDHx
	 a9+0xhK7SSywQ4+Og3BrJNO6Xeknh6uE5v3UvQFVb+NjvvWyFIwd0neRXgE9s1fyGZ
	 ZmnsZ0bY3aTXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFC8DE7737D
	for <ddprobe@lists.linux.dev>; Sat, 30 Sep 2023 18:26:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169609836883.7384.3778276705848409823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c549331a9142eed406b1ceb53a60db5b372d52c4f80588a145ebc7c1a87bb42
Date: Sat, 30 Sep 2023 18:26:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696098368

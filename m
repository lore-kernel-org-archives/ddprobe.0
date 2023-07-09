Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59CEB1C06
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 06:27:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3FA9C433C9
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 06:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688884028;
	bh=aETf/BdXfELCbA4MPNb3q0sxz6FbzlabLX3uFwYVAsM=;
	h=To:Subject:From:Date:From;
	b=oDMgRX2d8ubdMFYEkCLyeRZ2nF1ANsAivyGqbOUCLhdqXNptyhSOlk7ynYlA346sn
	 LeuQuYuMk47a2U8TR569cC4YqovYgj1ea3LwP4EJN0yfDBKmwEKqEhDb31ZjeWIGfI
	 A/pjit30gEz7+Ggw/JNTc6hVakzDudRdnM1x1mwv4ENvTLJcz0nYIB/1dhSEXqiYWi
	 PJNcwi6iMgo1ZDfG4QBPrc+p7+7xFBR+GcmFuWFyHVJUDyqwsUD88OBQ698UZEK6B1
	 wXVXBzJvsu8v77nwp8O6Ok1bnkLm5CZngssoOp+C0E4oJOw/VA9WuuhMspwBuBnBNw
	 Ed9z9bsjRWw0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA54EEB64DC
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 06:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168888402875.21351.14441175024186234407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf89dc852cb67caacba65902c4b5fb00b31716c5a0d537a257cb3d3d7c852d46
Date: Sun, 09 Jul 2023 06:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688884028

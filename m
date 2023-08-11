Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34FC963B1
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 14:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDEB8C433C9
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 14:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691763788;
	bh=Zz2huDtp5a2PuZH6vsZpL6ywquCxS3H9K6EFsGT0g60=;
	h=To:Subject:From:Date:From;
	b=oAsCl6cOcQUoRAJjovIYJKDwZavwsA8fj5FX/5f5CNb5ku3mPrrOuvUzPpjai/Hv3
	 +ZOcrg0uEVTzWpuphW7zbkFi1nxclARsaBo6bGOSxZFrKknTPG6x5OU6lz2kU4Xe/A
	 PkAi4kOdZHaNUs2oHPoDVT18cSRf6L6Ooh8LaiWtn+b/Wa0HO41U7YBtxte+3BH6Cm
	 FvUS+nTRtXDQHGj39TvkWApyPRnnkC0r2/0gdEAlz6a92skznQK4XKVUGdR/+txXSN
	 nIIOlyscCsOpoiA9MgCt57U2+8Ox3k8CVdHi85vsolpQ9jm3sP6GRGBwptIZ2aI6jO
	 3b2UBI6WFu8gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A61C6C0015E
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 14:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169176378867.24460.12977078099787133251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5646212a5287c34acad951e72cedf5a320ae667e52af759d9d0f4386b6b01e46
Date: Fri, 11 Aug 2023 14:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691763788

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2F267E
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 00:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71662C433D6
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 00:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666227053;
	bh=5s74s8lNOHZLIhJXT1vXheNzgWCEhabefJ89OQX1KoA=;
	h=To:Subject:From:Date:From;
	b=T/a5i7npySQ60dLVSmOnDibt70Y36ZXYYvrnuOmiNijgx+gjP425JoQu04+X6C+Zh
	 IV9C7ui636fUN6Fs+3yH1T8yIFKxU4g8g5t/1CzZwXmziLlB9LCURyE+kjsi9RRVrL
	 ytE7M5dkLzE2shcRv1SjLsuwmktUtBYAWhhIj9449dyF4J/UtdC2NRm8FhjqdacxIn
	 KgNmnYfl/aH2GcgX4SRg+hzerJ1uIkcw4uAsOWm4VqOGblT2yQU5VPVWDvlj1Armtd
	 qdiGC/D6Ekxfd++C+qeyo1/jqEe5aEyjQu/v0jyX5G+BpHtkWX+sJfME8P5tSyUEab
	 5oDO15pzlJ6JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57904C4332F
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 00:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166622705335.16628.11541165084888449702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58fd0046bf8d1380a290b65765086bc6a33ce9dc15dd91f2a9502ca234eba0cc
Date: Thu, 20 Oct 2022 00:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666227053

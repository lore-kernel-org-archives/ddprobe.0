Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFE2F10E3
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 14:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81ADDC433EF
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 14:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671372087;
	bh=YKg+xqoWPnTgxAuzoLJl9XG5GczsFPd54DyftdjsNnw=;
	h=To:Subject:From:Date:From;
	b=kwodcb98QoKiYwXNJuTvcLPe8lO01JBlW7wC070EDHAtTF8Ixw3rI4/Z+REdW0z7m
	 nqVKP8n/edFbSJ8q/SqExHvN7/nV+m4EBzJJlyrhzcw9WZpp2EfGooq7WLYgcFTwcp
	 xvy1LYEAE60or6bXw6p8zoJRJamsTTRI3wJVNiPugL1SstfchkbJDY2Exwg6AoOku5
	 uONDrYK4shHBbUseB8zm5BaUIILzlq2chFQHpEcBdILIzF8lwfSi9FJQpmCJ3t20IC
	 z7BvNGf2pib21tCUDD6E60M2P1QtKemibM7xMh8hTvLX+gGNAVou86JhHVzIonkC9W
	 FEgHX9jSMFjOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A463C4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 14:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167137208740.13443.1435833520245930890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6dc4977fbdaf5687b65fdaf463e143bd71e4aab960c3c2c9b20b26e89279011
Date: Sun, 18 Dec 2022 14:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671372087

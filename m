Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 576DEFC1E
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 23:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2BEBC433C7
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 23:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693956848;
	bh=OlractqDfkfIv8BxDIEeaSpHX8HilI30WzknRx7ZxkU=;
	h=To:Subject:From:Date:From;
	b=eXGQyqoqa5qgPxfZi/2gxy2fViISASGXh0q12SiN9MK0Dl7hG+rTFzoEFHqC2a3Qs
	 FfV1cBBW2T0sbSOVm2KlWNL2Jq+NcZGhJXuQ7IcA1M7fTzdx8Xz1eTBVrQiBkaJ4eB
	 iqildZZMie4B64TeoTnMNPZX5aEheddSSomYON80UjL97pCS4o7Sgc5vKohbyt+oQQ
	 F5mEkBSVzNQ+P6/qsX35dDNj9OT/HjRiyYnxMGDLARBfNk7/Zoc0UWtkP4Y7/m1+Vl
	 kIZZ8wri+WNRJ+H51yC+MQspUAhRZZGmL+jN78Z+A6GzXAXKqIS7RC2AOwSETAPAVp
	 T+CEa6VqN3KpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7ECACCF9E2
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 23:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169395684866.1512.9064497410336554612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d08acd3b1185a49acfb7f75807dc22c2105d1125b2271515bfea61cc003417ab
Date: Tue, 05 Sep 2023 23:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693956848

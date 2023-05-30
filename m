Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 352CF125BA
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 09:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD52AC433EF
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 09:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685437385;
	bh=+jxM6Yac7k3lvTSBqNU84Z5zV022hGgxisbDfQZg2a4=;
	h=To:Subject:From:Date:From;
	b=Dt+vGvpugGVEC9rYumIs7CBVT0HbrvKSbljJMNoJDfLuAxdZnUGeBWzrqDNA/LZV1
	 6n4ADTlrI/8Wb0IjZpEsP5MPBJACKRiBHrQo1RISs7dik8UwW5HyzOkU1z2I801xDg
	 uR9aGmF/EriaNwLQ6WhEpphuyQjiQroVv4/4y/JHaH6OZE9QD3Mj6bAPQB+ojtptAQ
	 d+ldNzq6oAXBQBTBNdvFCXxFiNr+ZhQFJNpy1CDoQnf0Ht81yI7B51hoozHu9BFA/i
	 88WvB3glhMffp4p2Etm8WAtQRdEdl4vYBD/GKu61Fm90qrpd2vMOs2Dzv6ksMdA+iS
	 /Y5okyxH0wrJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFC77C77B73
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 09:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168543738577.8846.10660353683777165527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4f610e851a2fa6a805e5fe044f07ba0ba1071274e890cf17c4da383eb0e93a7
Date: Tue, 30 May 2023 09:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685437385

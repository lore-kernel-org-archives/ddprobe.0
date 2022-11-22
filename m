Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B82927B
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 00:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C5E8C433D7
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 00:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669076454;
	bh=A494xe5EOPlNhghsh5POLPZE+39xjDrIJnHGcHcIgeA=;
	h=To:Subject:From:Date:From;
	b=PyU4W2+7qid4wz4mIqrH691mrb22mmjzjkFueSzTBE5mjuz28ZOZQvqUbkxZsZqGh
	 HpLTQWpK8D7TJPTsTyyzrnZbFZzCAkwCvwAHfUNl5qgIsJwUAw7vlCIfF5IlXzg+uU
	 f/9pXgeWVDGtp14KpbdO4w/D17OSHmSzcEcXZaJ8biBVrWQcsyVIUXVa9EcC22F2KY
	 Ynja7BgzOaMMc86IfB1Q+OqkaHPq/CF2q52cBNTxvPbXsr0HvOfY9kWppJPfxP2zIN
	 ZegtFtbJd6XRBlIGSvphhucv2ZrbmsgRahwBU1SszZYgzCFhVnEfVCSBuOCOf3an1G
	 eiL/piLCVaYtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53895C4332F
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 00:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166907645433.14487.9628322784284121625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe960ff81456e050c9b4f0d27262f4f7c58254ef9424b411b096b76173699926
Date: Tue, 22 Nov 2022 00:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669076454

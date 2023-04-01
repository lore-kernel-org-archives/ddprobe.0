Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5738E15A3
	for <ddprobe@lists.linux.dev>; Sat,  1 Apr 2023 03:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECD69C433D2
	for <ddprobe@lists.linux.dev>; Sat,  1 Apr 2023 03:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680318186;
	bh=LivKGVL5GOm7zs2WEP+c9PPlMT6wwyRnCE+UV6mMyu0=;
	h=To:Subject:From:Date:From;
	b=MJ0aMMmSIsOSkEnDk/2h0Xye8+8QFMUhEkQSNdMYodeTZ4XLarFWW/4Skzq/sI/qt
	 ygM/H+9x10SOa57+xsm1w7ieen4joiWkGAdSu/tyc/58TajT0DJHbeAFu6xD0M12Sx
	 K/tPBTtiT/xUupGQJDI2XMAVuN9LNcg9NOEikuwn+sTeTElbrF4TmaQ4xwb3Wh9gh3
	 0kdkljn1xUqX/N4fnPIJcVrLGmIUHB4U9OjsNjmKO0faw2NPvUrRda/TGpVcgg3zyw
	 HSB3rNIejSg4FvGr0JhJZ4l12gzvwArCnj0auL/x2ePom07qFq1OSIw1UQk0M9AJu6
	 rRwZ8gEh0JBBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF223C76196
	for <ddprobe@lists.linux.dev>; Sat,  1 Apr 2023 03:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168031818581.3168.472824360288576558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c5779e2133dab245bda977465b11093e42290f6a8974efd5e97a2d5a77af9a6
Date: Sat, 01 Apr 2023 03:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680318185

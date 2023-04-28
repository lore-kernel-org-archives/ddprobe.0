Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B2CB23A4
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 07:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6659C433D2
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 07:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682667725;
	bh=Uta/C8TiN/WtIuBPGEkxHTkEWXrKqynNlahPTtVLEsM=;
	h=To:Subject:From:Date:From;
	b=oaG8G+T1Kky2bn+g3H7+nrZrbqlrturRUqHvkz7TyWVTkv7Lt3ijISp557gu0On6U
	 mZSSfKPOqf9JxAYUljAvw8DXLFAswUinzi94HXsYuzO5s+js/4w0w02QwG4gPEZdpw
	 sr7fSDb7Omn+uzHgvAFtIrleEaseTFAv7mA0t1/NRHDZZKhH0yhh7lntH+wUQ3CQic
	 cLN2F8GOaHrOrMs/r8qRUZiluhEAWgqAVOZwPyifs1OunzI3rynzwX1Mzkuic/Zk2d
	 fkYsqtxXZFXn1a4hiV9HKRUtpYeVIN3HUx6BZQPaF91n6CzHSjf47py8X7kPgma44l
	 tXapJjJOHmA2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C874EC77B7E
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 07:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168266772580.27945.2435673399454615678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d7eec322a5bc66ee2fce5fce7f8852d0b429eb9a4cad35e8dddc01ebfd97225
Date: Fri, 28 Apr 2023 07:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682667725

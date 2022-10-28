Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2F1C122B9
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 22:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76CADC433D6
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 22:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666995654;
	bh=Hk2Ne5PjbGoVq1gr9JKD48BUlljU/htcb3JKHbhfGi4=;
	h=To:Subject:From:Date:From;
	b=Fjm9usQSWm+tAdEamxJgbkdSUt6pYZ2aZKVQEiexZZR+SasI/ML2kyxswvJBRiuYN
	 7imCqGKgOXPwYwbvzNopND9+tavdXj1nJwYtbSvq7wTFypNp0HzUDcfJYlF2AguGDC
	 +HZ7HAz3LtpUDQw0or70kIVG7Efvw9i48X1mWNF8KNNGVXgh+c7UiYYti/QAN8YaNW
	 Jk8XZrAwPCM0uIGwpCM1fGgCHGd9q9JdzpLgZZ9XPPQ4IWjlJTboEXRUmPyLt3bSFB
	 JDH4ayO3FbABr1+XPyMPWPs/dvTEbmfqg2TsFLOh2U7DVigDfA8WJxsexsUqImUoZi
	 mS3cUgYvdCXvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 578FBECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 22:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166699565435.25220.2568680816535055647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c573841c659215d4a2d2ec93782f2f124de14d582a31e1c6d03157f1ed20160
Date: Fri, 28 Oct 2022 22:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666995654

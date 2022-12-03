Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C12731FA3
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 04:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C133C433C1
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 04:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670041254;
	bh=KdOm8Q6CQCkvFDL7cBv71ydb/wjXMjOtOVeybLMHMbQ=;
	h=To:Subject:From:Date:From;
	b=tLLMOqhsoscd4Z1hxO6k2Lm4CSOqkWgfFEGnZ/T5fvOX10cc6TUzgoFY1sZKP+QJG
	 gCRC+TVbFxXTK9ThViT3Pd5VWHNz558JMUPxcoubTTr1IYAtg9T0SnxngUds9nyZD4
	 AupXTIvjbOXHW+AR9rdJWgmGojaiWfouZ1L4pilKkY5i2R7Y8FLt8kiguvplhXQHfD
	 t5OwUsILnk9+xMUD/mChxS9EN0Ae3nD+mnoIv8qKRxx1eO1xxBJWKllZcdqeqUid4K
	 btAZnWAXMwQigxsDzi226tmW4+EtthTSO7SFhDrdIjvDFYoNMRJKp0Y2VaSh4WspvX
	 UZrvvi7oOxCKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5090AC352A1
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 04:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167004125432.16978.16853139571164268323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc9a2fac243a84b7b79174397c67de53c1a5aa7113fe9466edcc23a0ab2d125b
Date: Sat, 03 Dec 2022 04:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670041254

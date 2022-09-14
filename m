Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0C883D7C
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 13:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 63EE7C433C1
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 13:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663160453;
	bh=u7y8/NQ5gC2oU2r/1oHvAGiFIDfcHb/+1MiQNF4rxXo=;
	h=To:Subject:From:Date:From;
	b=gaRD3YzuZVLr0GnX9LcliMF+ZDC5JaW4en5HPGld3Q9Sqg3zglBYaE3LTTYVqEWgt
	 JsP5VSuenaPIlxyxp55x9W9DpllRkQDkXQcIe4E+uwoiR9yX/dQHnRmdA1h7BhNU6K
	 leB+X10EtYregW4nJMQVGWcQAY0vLDDF1D+TPP5BB0bbWGTkjX616YWRhjQX/xFs84
	 tQXDTIJdCRNIy4xcvxfHqVLsZttJ/BNT4a2Gte5Fwd0TzJLzCf/rpx0xHjHZ+jnPVF
	 ag8rF9CHSw0AEAtF37YNj0uAjIk7bYblgu2wNG1MqsEkCABugzSOWjJ8uHYFO1O//3
	 wUeuJokOc1mQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F069ECAAD3
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 13:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166316045331.20996.16338139188260348823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32bbd0d0481801d95d8262365b8c25bb8751e3f9c8b0ddf6729d13ac3fa2c6b8
Date: Wed, 14 Sep 2022 13:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663160453

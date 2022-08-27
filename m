Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6BCB15CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 23:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7370FC433D6
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 23:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661641852;
	bh=IRCLFZT7rkq9+pXxY6y5ScaMcBrbguyKXrgT+DQnkUc=;
	h=To:Subject:From:Date:From;
	b=bg9yP8NJa4j7IGkueWonIS7xqqsqU/KVEhbR6UFpff/tw7HQAEJhDDlj7ySWhLvGR
	 i+fIgeaF+sFpQ3/WKu+tbq+XN788EDndwpXyYHyXtmDx70KsRP2DjeuWUTKtY/Nqpr
	 z4gpgjH9C5k5ETKoorXIj8rbcmXjmql3KKBpoYERD8A4q2xUfNloHa0/Q8dSGleUMJ
	 kq1bKQ8F2JRDulqc4Uk3o9Ml5+xzfOFOvXfbRNvt8flJzXKok/IDc7+Jwa0YAmDdYP
	 ECVZF4GgflyPQx5ltDyn8R9EBp8Oi77m1siK+iBW7l2OiKOy5elzoDSWcK4zPgirGJ
	 /FfaQHd80DiSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59C49ECAAD1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 23:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166164185234.1905.6352271095558937500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5bb0a4dd50b2747153ceeafbc549160e927df1b4aec929c507b79cc4f610955
Date: Sat, 27 Aug 2022 23:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661641852

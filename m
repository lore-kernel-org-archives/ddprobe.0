Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B2E02D05E
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 15:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qgLqNkAn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 844C7C433C8
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 15:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699371496;
	bh=OuQh2whNujTM1Z0mQP5lK1r5SI4lPf8SW/38gw0B5zk=;
	h=To:Subject:From:Date:From;
	b=qgLqNkAn9Gnl+0qFMvh/vD9IiGGbQMe9v/SNShtgZBbIxhgVrajXTxy9s6Cbl4NGu
	 nPR6HEyjd+Sa8Br2YD/S0XxEzuP/7RGxYi5Is7oyLPTfi8BcED1ds/FIN6TUQA6ew0
	 kanLPw3AZbK/wMAjC+fQDZpFYGuSFm74LsVuSwi0alKl+Y0hPYJC4muPZq0qz7929V
	 tsxD28gl3qqisZdYUCKKoymrLJqYxCb0jT4G8KsA0FFLkeCvmaMXGOyLX6Mwv+W97r
	 y6MIpASpe0a/YKcoiq9pfz/UDE+0jF4JAw4HMriIUq9VyNy2kOh/LqWDtA3TLYyrj/
	 Tl0KTGXvuT1gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B213C4332F
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 15:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169937149643.23473.2201144508246197913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8ac87f34850b47687a1ade47cb816bdc0a8f502f51a42d7ed4bfa4f5b540128
Date: Tue, 07 Nov 2023 15:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699371496

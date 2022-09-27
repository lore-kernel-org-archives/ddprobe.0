Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4728645
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 05:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A3CEC433D6
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 05:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664257253;
	bh=gQwvLZ2wwEUuqWtRn0hXo47e2Mgopngx+5oARmZWHY0=;
	h=To:Subject:From:Date:From;
	b=Aaxwge0js+j3qHnRc6RPMQBFXibXT6cJTxUVJyisGMcx82Bs485m7gXyajrcJH/JU
	 Yu+1dUbPtbhfhL1HSBbES8Yyyjsbil1XjGMKtkpsKhjeKK9SuX1KldCby8YhbYtuom
	 upEgkROCoa2BxAiiAEtGE99Nd1qiWz8p1VLxBI2TwZ6xoXQQVsQtlw+qGezICjtGQO
	 1B8LU2AB0cBjKHggQrzKjXWi2SZyBSU5RekBD3TSo0K9U+OBTO5twPE4l6stpUoIcl
	 Dth9eT4A7NNW9Slg7QcyshKj5JHGwt4iBsYV9OrC9LKjM1owxSXj1k/xXTEUNfuH0a
	 4pRscXGqt0lug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50E9BC54EE9
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 05:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166425725332.7151.3441660028439384854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b96f7513eb079dbe961f0bbd88ef635ed0882085f5fd405c250f3a42898a8181
Date: Tue, 27 Sep 2022 05:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664257253

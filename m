Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C63B715A6
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 01:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DD65C433C1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 01:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661563252;
	bh=hprC7Bo+hvi9iNeiCUQY2swIC/Af5H15fMTXn55Y80s=;
	h=To:Subject:From:Date:From;
	b=qHa28Bfkuoo3HKyJ4YftTOzh+IEoATb3lU0MpE1qXY9E6w+QXVr4ImBkV8UhLc0MP
	 aecj+8O094ylfMihREpqMQvUJ+6xCaKZRiZcwQCg2N0lX21UhIVBo8M+0yyTtIYKrs
	 Se2RVlNhLUvYqS84AhtUfGKt5yrktdI+YcuajRI7+NDgrGzv75QgIH/b27pQEh313q
	 GuSDt6nsVhVTTfssziZINPPf14bpsqjVdFNH6JlO5kV8YpfzT1kyy6qQSLoCKJv4KP
	 9sIK6pJP0b/ICt6XexMYpt8R4e4VvUCuZEa+xLi5sahj/mt32VKD4S+RzZ5ZiQLhu0
	 ww0+tcTbnA7KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50833ECAAD4
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 01:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166156325232.7743.10274510250562064368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11d0c35632461eeb68ef4b343ef7fcc6b1d2fcd11f785cf7bfc38dd587fd57b5
Date: Sat, 27 Aug 2022 01:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661563252

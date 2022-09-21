Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B49897C
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 22:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 683AAC43470
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 22:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663798253;
	bh=XoN9qQs24wJWMRHA5r1ZWuxpSTdTbBLkAVRvfS9NVig=;
	h=To:Subject:From:Date:From;
	b=A5+aVGUaDvKJp22xbNWSOFc23m0RDKTb3Lij5lPd1RXkBbr9VbZ4/IA7VTILEcdcX
	 y49YynGflejYzTIYVGtljUAxpulDTYIvGuAP8E7PETH1heeUvS9nydkA9H0CHyC/6V
	 eXchesU32i9/HKB5e1SGzJIWGmBKEpnrMAWejwhLQB42zgCH6yP+7GGqEgL0wAq2MM
	 eQBlTZ8RwB4LfcEoQH8++Ym2fnSqJYxN+ffllWrXgz4r/wZ9PObdKb9CQWziuCT+ij
	 LP5XirkWmk8ijxwy1KRDb4nZV6XB9RQiShkDQHvWIwqxCCb4Mun9oqOnv8ySXIohAu
	 mfQPp0BGO97hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 523F5C32771
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 22:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166379825332.6824.6606786344365399639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f839969baef56eb43e2c1dbd8a91252e02b3292d1e12aac133ed24bf68ed42c
Date: Wed, 21 Sep 2022 22:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663798253

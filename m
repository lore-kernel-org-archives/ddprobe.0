Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0959634
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 08:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84091C433D2
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 08:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671178287;
	bh=0YcnlChCIY+Zm35D8zNjDBssW4KKlcHMX4fWGFoGvoo=;
	h=To:Subject:From:Date:From;
	b=D6ujgUv1UvdBbQWAtSN7GT7sSuGlAkAUEhtMkSjiizggtOCcnfvRkG1D+CBmcGGj7
	 541Goi+F2WrzMvBWodLPwuv42TwKqkYgJ3Ln4fOojBlFImXdPwjx6x2uLaTw4fUTWj
	 OGSev/eJIMD279rfnrBPvylw9TifzX4UHvclNZnNw4vq6xSdqcVY9ZxHhaQn82tl6G
	 kHoKKrLYW8Gsh4jwEXt78Ze8wdZnFT26pfQnwEkz+fWzXNwqo58usP4tGo78+5VY7f
	 6Jyr9GAifcWoN6Kfq+B3Awmfg2FbdI1wkKdzcn7HauWpPk38aNwkOytETX6OJYOHjb
	 NLVmme/27Ok3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 660FCC4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 08:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167117828739.4748.9813440236375686655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54c434edc651df9e2991c72ed93b4f2789f93439bbda0a235de8f9ea91f9a515
Date: Fri, 16 Dec 2022 08:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671178287

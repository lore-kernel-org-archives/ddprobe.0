Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B34AC19B
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 09:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B583C433D6
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 09:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669542654;
	bh=I8VrSbF1LCbyEM0nzvlj3aSBgZ9xW5Pl3MzvLxDsl9o=;
	h=To:Subject:From:Date:From;
	b=tGruqS228dpihoX9xZX1aQWPwavqG5o48Hn8p1GgnBU9ZRLKfhECTQ08QA9lhRaKj
	 BaBpZlvDoYRpVzpIabXrmLrQ1rOnbfGP+QCqQNOLUyBJvI+Knv+05JXgFGbXgdx868
	 vAlKbj9OLQoYNJZ6o98agWnmvURRu3cUkrGEKgZFNJj3YCrnXFCFg/SVlu+oDYFC3U
	 nR3RdJEKJ6M6mBTN/rj1Z8ddhz/Zi1phL4M2bmpAP0LuknPh9KwOsaTZ3AAGulkcH5
	 EsJ4YD1NZ85MBouCwi2ekOu0Nc8aS6KHZqpWMnICJaf8BhzR1s3R0LwhbcwkwRp2pq
	 YMm7+R7beQtZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F1F4C352A1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 09:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166954265431.29380.12608754034611200280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 585df7f03c4f9e497db40ad0a8c04be72c90a79efdf486cff22ee5ecb55731da
Date: Sun, 27 Nov 2022 09:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669542654

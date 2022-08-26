Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C24714401
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 16:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7764EC433D7
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 16:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661532052;
	bh=8a++Q4+iiKo0bX5vSX6wzpbZw7DTSJI8FsQn2nZS2y8=;
	h=To:Subject:From:Date:From;
	b=jq6kRluGazwTF7+V4dv/AOA4trXv3hlKfb2prJ3PM0ZV1CuWaVmZimxfAZfLnCkbN
	 gypEQXCIiIVlByg/ku2Jomln5YKw3FGExnDj64WuZeB5aL3TmKn72U+JshcyGwNqM9
	 y2Yx59NQVwOic3kSGZGT5BWU4nNduuTwZGCNZmljjYUEZK37lRfJRWqBq9znYmDRWh
	 p0RTS5Karo8/ge9JSiD2BSpHY+YYtLk/wdp/njKIL1ujYpstpbZsx3zNPo9+YlSmZn
	 ToRbfpkBXwAtVPw9sVDXoJnUFrHnnNkRBlrLSnq0SFoXUr7zCu0UHe3pZjbqEA9cUk
	 kCHFv7DskIq9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C552ECAAD6
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 16:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166153205236.11424.2324149673427232456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ebc094b954bc7e4aea1fa6f4d6c0da59ed9c452c8559f9d5d8a35eba95edd59
Date: Fri, 26 Aug 2022 16:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661532052

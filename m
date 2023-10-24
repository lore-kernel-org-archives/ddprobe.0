Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CF14250E1
	for <ddprobe@lists.linux.dev>; Tue, 24 Oct 2023 09:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XiD4lPBK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84E78C433CC
	for <ddprobe@lists.linux.dev>; Tue, 24 Oct 2023 09:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698141496;
	bh=eYxPviLAZKaCXlFFC/7dOFbcuccCCTtdYUdnDfkfw0c=;
	h=To:Subject:From:Date:From;
	b=XiD4lPBKqQt6Bq+X5u8rbjcDGWCsVb6d1vD5LphXqQTUmVMmAH/XHA3i/iu2rGfXf
	 4MPqmD9qBocnAhdwajXPdF0nyZjh1k8LQL8ThXQiY5inf2fwnshdX62PjvrcszUqYh
	 HXy2FzeBrG1vaQJKwM6IWc00Ej8fKqUxpT26KkbUAvchRdCSeMOSwzVzsiQB2CXBYs
	 9SbusslJc25c867s8zAOMX6HOrYYD36dNhYurGGa14PQEeyvnxh5U/1oGvaa9BFQqk
	 eEQTOg2rUfrxllvxr/HAQ6xT5NobMlrud075j9U9FCnxC0+7S87t/PJw+dxnpLQfst
	 U/q4k/yOPv64A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EDF8C00A8F
	for <ddprobe@lists.linux.dev>; Tue, 24 Oct 2023 09:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169814149638.32758.3204308804802969869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58c4c7c4cb26c84669b965c2a4d2ca3e6acc218538f309329c1ccd36e94b3eb2
Date: Tue, 24 Oct 2023 09:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698141496

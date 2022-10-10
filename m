Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA5F95C84
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 20:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68031C433D6
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 20:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665432053;
	bh=I4/NYrrRkRTEAs8IocU70dotaqpSTfGnYj3HCAcwyv0=;
	h=To:Subject:From:Date:From;
	b=nEmOw/dixS8pz32y/gjR0PO9fWk/sIguCUIAMT80drPZgPdFpY9+eeZxz5oQQCEH5
	 g+7FzkLwoHQaHTNF8NbJ5xtkWYQMqv/NG8BXQAtc0LLPgD7tW2hYgiSdectTng86AT
	 N2lq0djlgVZEuzfxnJ8LQQvxBF2zpdb3oiEkvT6sS19Rs393ElDCC51cxbquhkSZS3
	 N4TK5jTZLDZ2MTqp7OJwKmOpFXrG8vmSpP1LCGe1KuB0KoCv8AxNqlPL7sM9VYYJRK
	 OEfX//uoO/z67Xf8C47A9U8GRxtKJDxX5lNQHKMC0U17BpTWkZlkHWhXLKpAMRBuiZ
	 9d2EGDc0gioOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 535D1C433FE
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 20:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166543205333.25434.9939547774921989034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 734809fa8f87295e5380a9564a68e1cc24f30f260ff603a7cb9b391d4ca90104
Date: Mon, 10 Oct 2022 20:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665432053

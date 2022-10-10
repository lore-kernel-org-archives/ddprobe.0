Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC86123A4
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 08:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69AEBC433C1
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 08:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665388853;
	bh=5JfpY0JYlJlkhwHH13Iua1tyBO8/RduB0Q8xEDxtavo=;
	h=To:Subject:From:Date:From;
	b=huZrIHAUnQxPH2FY+9c4u6wksp2B0vjh/f0QAnRO1PI3jiOrihw8go75v8Ym+jvfF
	 1RWMQtGDf0C83qML7gB5YFeemHA83soZzId30JbZ7bKP1rmpWp8PMFaGASNJpcWkeJ
	 mfRIVO/xgR2SNQycxVJ12egQ0ittIRzbousX+rTHHzqelQblBEeaVWbhlSwGmg0Tmq
	 5kWFTiu6ix7nQzeaaPTFmNI8P/KgpsKKZPg73bPgoKEig4tHYbCZL+9jXZG/8ameyU
	 Ba2uTDju3/YDFVOGLkoKFot7Uk1BzSxOodMOQq+97Y599JwEdgYiteGFIyChs7PHgQ
	 bK4laTvbMWChA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EF70C433F5
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 08:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166538885331.9945.11634424072372728694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9e5a0381e6b65f32455caa3b61b75cfda3effd68a02ec3dd45436f3cdc863a1
Date: Mon, 10 Oct 2022 08:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665388853

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD0A010EA
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 08:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BE0AC433C1
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 08:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665993653;
	bh=2anWzb2DtQV1AiQgnvc+XJQqcmfE8GWOiUTNZ07+JsA=;
	h=To:Subject:From:Date:From;
	b=Sr0Sgg2yqT1lUTMnAp2MvUTYip5alRaHms7aBDLsnBhe1/B+NUMrn+IwmITemDy8S
	 93j3jS1CxxhCloUAu0pS6tgnvdvaz/3EqRie41WjnIM1YhudPx59F9YnXWgNoHe3zU
	 Bh1rdg9fQC4RLFKl9R/OQb/SHTcqBXcaaiRzGJcJiUUMf+bJlzgOzvpG94WZPAecnq
	 4Ei7jgvFz5rO2GzQxzF7NWset5o+OZk2hrzWKTSZC55Wjy7V8TsnV3gc17qEfGcqSX
	 DgTGihDN7YYdUmfkyEKbOp8V8qUnHfXsI/RC7Qnhr1bxztH2iojUlpiWJTqAY2RQj4
	 NqTVAV42lmFHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F3F4C4332F
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 08:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166599365331.19410.2912270845880095949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dd4454fa3ac65467582a65984c27d45e2f3e72c0d6dceec4e4d5f529c5cd842
Date: Mon, 17 Oct 2022 08:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665993653

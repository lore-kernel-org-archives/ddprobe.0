Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD1E67C
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 01:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BA3EC433D7
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 01:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663637453;
	bh=nADFxxw9/0V9C3djWFrjIogao/2iMLH1XZ4Y6sYlBJo=;
	h=To:Subject:From:Date:From;
	b=kkadFOc1OldfR7goEwiTtiHYJfGARvyGP4Hge2OoDQYz2fPfoVrqv6UnB196f8eew
	 sVGQnh6paLH8XYxyzRFbUWp2mRZzJyq392YA7PZCWJZAJCdjS3cmt/kVsNAaYgLPDG
	 duL/yEEWSrQiEoY6VNM05nh/bThhLi+98Z5u8aMXl2O3bGX/crWwbtkFP5d250hryR
	 Q+7NyznLtTsR72YYAQS25wioZ1GmWtqn6oCx0CeBqAnI4TDLyMhnXScGzfv151blgZ
	 z9dBuOB8wI/qtOtKoMuoOavCH9w2haUKHd4U/JYUtGxJQmbXcvs6wTJumasTm1Lg1C
	 +eYViM7uE3jTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51E8BC54EE9
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 01:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166363745332.2055.4182527133644811677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 150b1ff0d98b3adc596cddd4f40729ca35755c3684330061e9aef92660f91f56
Date: Tue, 20 Sep 2022 01:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663637453

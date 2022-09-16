Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B72512C80
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 07:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 764ABC433D6
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 07:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663314653;
	bh=uWbyauv+SGpT83sUQxTTRHQDRxZ6LEzU9qt1BPjBYOw=;
	h=To:Subject:From:Date:From;
	b=KES/Mj3wCIiduaFxrbT79PA0ty3XuQSFG14GqKj1VDkXLRS5Kw2UzRDI0+PRAaXia
	 PRaZToFHbabOcMMi0NO8bBNEIW2lbbRYcp2dL8LnFToH0FCxU9+v+2vEyXRo1ykEhy
	 nbulilrpHIiPz9KGhSFikKKJAlnT1jTdI2DjO6stF2mHrg/n8Ui7VJ6j7k63MnZEp5
	 AxXOHwfFW26hgVdo5JrdXf4I+CFgR2NQRh/q+umsFr2iTjjzliOG3fdFgXSK92hv8s
	 AMgiH9Q23aIjQgfFnpvh4snr6lH45OnDwuRAUfFwK04n18Bgc5BlouNGeeuuy3yUDc
	 wayBYPWfWzopQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59BEBECAAD8
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 07:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166331465334.12255.2923947726834376124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ba499165bb4191fa4626b2fa5e0f965d1c596240e76ec25be19e06f661bb095
Date: Fri, 16 Sep 2022 07:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663314653

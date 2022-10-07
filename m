Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B816B7E8
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 10:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E853C433C1
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 10:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665138653;
	bh=ikE/JaorgjIKutPXL7fXiYzjzeeO8xfHrE3J7xcFIqg=;
	h=To:Subject:From:Date:From;
	b=kr3u9IJVhiadyGqbDOrbZhZPk+mGVmJUeUe0YXtCvGjT4aa2pK3vwxHVT0iKWXOBP
	 1Gpn1i/GuQ32EXIAtaL5WmJXeofXKJpWn0B6eo0/MLBglsMcs8t4O/qIOr2cEBKS8g
	 nlmTJC6QejMiCjHhsGspldVkYm9mAjLFoUeKU64O2F8S4ZV9NsJbY3Uo9iKvS0lnUK
	 YLV4MrUw4ldIcZ6i3jziyBrkaAsGTHdvY46vOFzlZKZVB7nXp61cje9G4D69oyN8JC
	 p2pHqLR+hE1NMFQoKp9h2CK/uv3syxj0dsPbkCAP8OSK4WsEYwE5lLdSMoMRPReGbz
	 ei89fc0WXiCxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5145DC433FE
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 10:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166513865332.14045.16561680504578704418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a170e471a40af1d699e6be2aee87e878c662813215a9d335c5a6eda1ac46295
Date: Fri, 07 Oct 2022 10:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665138653

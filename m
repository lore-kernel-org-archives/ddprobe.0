Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB17E36C
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 03:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71422C433C1
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 03:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668828654;
	bh=B8nk5bw8Q4+JPn8KARRdBcmzGD2OLV2n7Ytl6Euqnu8=;
	h=To:Subject:From:Date:From;
	b=MOqeKMEungZGd3eaeTk2bqse7oemDhc3SwkVJ7zFDkkFAGja82zggi2MUB60WOmmQ
	 zigrgMqLBGe28z+bv4kpy+/0Q1VLESPIU248pxYenMSvRabhD1l/iPXNBzkOb5HrfF
	 ynL3JxDAd8ZWYOIYc99LjqdlKKumRYjZohwyOxxYR6YmMTwjW0FIWfocg3jfnIRwea
	 NdjWVPszoBsG/z0BLx4VdrUbxkTG/DYTNewAbHmIvn1W4G7Vuo9G3CDMEVZOAsOHKN
	 EpJNrzVWjyS/FlTKfWUeKnCI/RcboqHIlxFjUzddo9CqAmairhNmvuyn8ZF97JAJ36
	 RQc0FXToG2BeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53411C4332F
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 03:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166882865433.18904.17632080553471635616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d5ad9698f3b925ad5817ca48a55839519c65a98dc52c5a1937476b3f8aac208
Date: Sat, 19 Nov 2022 03:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668828654

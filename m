Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB0D833D5
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 18:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F39EC433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 18:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670868687;
	bh=LnGqoHy6X6IlorXWE0/2pcGF781YAKgYgpvAalIVu7A=;
	h=To:Subject:From:Date:From;
	b=Qv/bzpoh5jSMkUfTiIRUnFZhT68zyZbjeqwxajPPrLHsFgHoU1uqW+BsO3L7vFaCN
	 XG/WwILPI5697YX6xlgs9y83vxovROo/K7uIM0Wa8a9rcZkey76sURZx+iR78c8df/
	 O4hkzh5GSB6h2NQmPEQt/tyTwzimvh5RN1C35EXJTDLAHUBL5NIpV9Yddg+EADVxBe
	 drwSAZQ9yorbfCQvwvGBuGGsDzeF7RXlLYt1hs0ByJigdk044EayutQDbMYVLBvMpH
	 NjAqVFyIvlXOFC7zFufvPihenw3/rvDR36NprbEp5+wCHAc6cW9zKCnuzFQFOnRQNc
	 7LJxJ92/9BBZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 607AAC4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 18:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167086868738.1422.14709954539689001085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c11158fba028fa871fca1dcc12e93907a8abb97e26b780dd7c7821b754f91e1d
Date: Mon, 12 Dec 2022 18:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670868687

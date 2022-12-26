Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFB737B
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 07:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B7CFC433D2
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 07:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672038687;
	bh=sAeeizokcKfg4pjzuutIH+vw6JtkzqDICEQF2MawxoU=;
	h=To:Subject:From:Date:From;
	b=LveH4SiTFt08+gnFhpla9bnH6RFnewEgnu8AFhVhIpW1DCf6YYvbsSwjN/hdZ+rxu
	 kOPt4p+Yu2GRQ+Xt/a7SdYc1vxCXHbxhBzuZCfkbJeBT7q7CSA5k6E4ZTWfaGCrrV9
	 9a0k8WKNteGlAjayJNxw/j9BGEGlpdyva21dYrjnuquh9uUvB92hdQ/aUF/nfh6oE3
	 faR53sq9nkuQ21nFC3VWkTgjCPT70frl+kg3GUCIg3y40nSOvP8kPnnW4C43aIMoJQ
	 64ZZdha4wVjVjgKaMXWOkYzJhTMFvByBU1LhDH+r8CULsOKvHtrXAtECFb41ZTurh8
	 YMv8YFGungz0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60D62C4332F
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 07:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167203868737.12741.12050871330920929250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a36aea488577d3fe5ba91c251e710df5715079077a7a4f9dda8af323c2729084
Date: Mon, 26 Dec 2022 07:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672038687

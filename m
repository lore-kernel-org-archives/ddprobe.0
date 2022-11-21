Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1844813
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 05:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EF0DC433C1
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 05:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669008654;
	bh=1ZEsFAaNqjKdmMNvXO9WczTxVJdWHb0Y1P5VN10k6Do=;
	h=To:Subject:From:Date:From;
	b=oymNCETLM9axbp3FXKu8eZSLqSNU4b4hs8SmLNQyMgPUvEU3Sk0gvbvam4Ji2tuCj
	 Q6jkwiGHBnfQb+STv2rr7sp8nGjbi86fuOPta7her1mGNO/524kuyp08qZcAGYKhKU
	 ETtU9a0uZX0hRBi50M9SXtsgZGGbg6hjL5apJkS2AjzVDRQR3UgGaSjD8j6ghnvm7X
	 ERg6Tgs/3CPxiL6hqzbc4PeK2E33s223I+Pu7HV/jAxUo8lNXmwysEKorM9RvPDgw4
	 JcBPoJjS6+Abe1AU+hAQsRewv99bZpxxCnzwHnGQOXN/77alt/zpSlrmdh3HNixdcN
	 VxLD9DAvqZJwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5677CC4332F
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 05:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166900865432.17705.13008056702347842187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 488b82c88c8c6451dc959e2bd71770206f95d012a450ecf9a49e757394e524cd
Date: Mon, 21 Nov 2022 05:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669008654

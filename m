Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA1A0BA55
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 13:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70ABEC433D6
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 13:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667828454;
	bh=X8hT3T8IxrP/CmRBFPN67R2o2Y5xw7IEYevAmdpobkk=;
	h=To:Subject:From:Date:From;
	b=YvT5DKoBDpf4Ei7X1rbg8gw5A1txKNcv629K8jKWFDZHaMFr2b+/5f2oiG/hemGJo
	 GFb/raCV5MBx+yJSGzx8CzzS+Uz1w586/zdimZ/l7X8c63Y4O221DGMIsA8wYDUAEC
	 +YQ+9s6wS1lHWDqzvWUjH+F89N5M+pFxtoxMtJqfFi+Vi7WP7YnKqTfDmMUurd1V68
	 GICiGdWC4kvNwjCOWqRImjk/JbR9JD/T982NfqqpFFoIDVFi4Cy71H1rAObcOGSA8N
	 9GBpn53Zkw/ait+SYRvx0wbd5/pOfZj+VE6vZ/S+xnwfssTqXy7JRMSI5y2WTAyJmS
	 FwQ8w5Y8H9OPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5420BC4332F
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 13:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166782845433.18832.11583335821880122710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 608429c77464e4d619f7bc01077655d7ce83ab4683910a38def582312b119322
Date: Mon, 07 Nov 2022 13:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667828454

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC88623AA
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 05:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68911C433C1
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 05:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668577254;
	bh=lMUAhHUjjliacm5bYgWWFuxSUZM73kUf2ih/Ja6J4EI=;
	h=To:Subject:From:Date:From;
	b=OtY5fUiLK2v6wTE1hCo7T6xy6iP48UD1CYmvgxjSD94uRSzlspki5NrpCj549qyOz
	 3NaHt6WlwmDkFg0Ja3VCfEg5YB9d9wTagR5B+wfxbZEN/03S9G7L90uKYAFM7icTLv
	 8OvsT/5nIvV5dfIMsJ1CewTmEHm1q87jtrtueCHR76BC7RimDkKwxBHMSlJeFnf2ro
	 /2JOvNURBhhIwest38b2YAO/X+2kvNTsKSBdLxTF44L1kBlxDmA4dwGA4HTQQFmfv8
	 vSzDBShok9VaqMzqYGRCC/rVRFx4pZ7NhaBPQ83iegNp0oMB4397IYwwFFcTbLClXb
	 dFlpgXpGGHN+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52805C4332F
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 05:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166857725433.31422.18123443918336303891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0660dc4cf1fd0578186f61545678eec83dd63e6c0ad24b990ed7ce40ce37f05
Date: Wed, 16 Nov 2022 05:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668577254

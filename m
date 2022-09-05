Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBCE628F0
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 06:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EC3DC433B5
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 06:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662360053;
	bh=sn/GO6S4b2bdgsG48HJb5NWed/YjOf5Ah6sLqkp6mqM=;
	h=To:Subject:From:Date:From;
	b=KOP1M3OGHMt7PdNOHqsvExdXpxWNZzPompiL0rzRjEHqRkuECSs5SaexDtc0kgEoR
	 Cx6w62KX160N88GhmEtrnwW6MxKd5Aho1psgiB5CHcA5IPeXQYYiJqF4oWi1eIRGCU
	 KVRe11/z5Qgy2z5RnL2B+ADZd1Mr5CIPEotyxJE/md7uogYcMtamupJyPLzym+5yLE
	 mEn3RbqVLMEPIjNDFwZRvlm+YpfUVkFRaILSuD1VLcL0wWWHh9nVBu9dcv+5keleD0
	 kqkqLrmn/4d30oLVpe2UZfVR8bXuGQel5qIMZHGP/UCqUWcUORH3AQk9W3U/wzaJAv
	 a5VgeE1FgVkBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 548DCECAAD5
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 06:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166236005332.17439.1168042183225199453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fce46d6a2da82ef15e24b3ca96847cbe0112419d6176bcde8ca98938360fe448
Date: Mon, 05 Sep 2022 06:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662360053

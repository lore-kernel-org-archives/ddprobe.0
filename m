Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBFA32F56
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 16:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7091DC433D6
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 16:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665331853;
	bh=LYrGwL890VfAx9H0KJ6H1gToecI9a5o+xJnPLWB4g6s=;
	h=To:Subject:From:Date:From;
	b=fIFzEAk5xfEh/Z4x/hjdh0HCYyaocQmasjUUD9lV2RICKs8XkrNYIy9R9G6DC2MCc
	 bEkdwdh7/Ty/yXjmMDPOG2qgnFfmwtQ5wuFmn2Nv9a5xpSmT/7HYuPOrpks74/8kNh
	 Zvl+75VioMzxx64jH8C0AWZGZMTVjQFuel7LI5ScsLqup5wI8T+KjqWeL3U7PokKqx
	 qDTHWIZkO86sBeU+kzAnXSqRCWbjRZeNCYFL+xW1us9PxyiGCku2ACJOim6OhjqOft
	 zH5STQoJmIAih1mcCjMMfFjxGqzV/BWunCojtR18iPCONJ1EqUZ6ablUYR3S1t4HA8
	 wgeFmfU0yNdnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50FEDC433F5
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 16:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166533185332.16498.18016645232892771230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07c112fe8dc5dc3056725ea9c08946f3016027dbfb813677bc5f5148d388c913
Date: Sun, 09 Oct 2022 16:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665331853

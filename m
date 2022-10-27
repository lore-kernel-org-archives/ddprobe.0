Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C90DDBA47
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 08:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79E22C433D6
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 08:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666857654;
	bh=MuSa8DXGFDzI0RRA21dkQhQ2bUznntN8pvXijQvxphU=;
	h=To:Subject:From:Date:From;
	b=RQ+y+wOCkj6aAQAAP/VWa9Ym0mmKnIzZ5YAzIT5MgKoTboR+WRsGKjxEbjLv6f8nq
	 Qq21asMWG3y78pUK3DeKbOk3KsaxtSEwvg12Jm3CTTBvggkeM+INYNrECaKzzvwyTc
	 tKvERvesCmUA34BivGXKsJHgW2YopSD+x8yKRnJA+qFqxTsKkF7S/lmCMRFObcJqS9
	 G0ntJCnm1HGn3SfK1b11fI88Kt61T5OanI0c4YcJo4d6cCNekxSdG0msibcMf8JJST
	 aCebjLgKXIT8M+K0JRg7y2xu3txVwXZf9GmpM7pTHQbJDsDmG5dLOGA0J1sbuwS/O/
	 oD9CvW32dcuCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CD1CFA373D
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 08:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166685765436.3265.9355885586415219381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90a56997638a1425363c98d62c50e5f27e6ddd8d5124edb869722419d7562cee
Date: Thu, 27 Oct 2022 08:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666857654

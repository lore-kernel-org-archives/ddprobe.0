Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7DD47B
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 10:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F6B7C433C1
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 10:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666435253;
	bh=et1U/25IQq+r5e4a8T+XKOGu9zK0DPbOb04TT5O2qMs=;
	h=To:Subject:From:Date:From;
	b=C+IR7Ad4f4TIp+62uMg+56eAOreABG9793P6gUJIa1EigO6a/BesZwKRO9Eid9Slx
	 h4SIfDP8y1JRmEfPe2pE0owrJ3J+WwB0gHA2BpfcX8V6LkxwFPH08oyctbuP60Jucv
	 Q0TcWVlJ23JruifLGGPmjjO5kC+pk6YWTj9BuFu/TVyH65WrzNV0EKXG6wVGa8oDuw
	 C5+qP8i4j+ZKXYIp1VO/S8QhWwxEq8mYLkJOXl0zomc2PeKItusd6INXprD4G76yT9
	 ZTVW7fJ/pDYw9TIHvAhSz2WfV3K6hrmKVDr2aYrTEYAqbi2EaO+FKzKlRmcRlNCPB9
	 Agmz/0RGKv1Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55732C04A95
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 10:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166643525333.12341.16110189685721906303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4e3e8a32b5410545a27a4deea713aee0411642deb663fc91916611a32085fb1
Date: Sat, 22 Oct 2022 10:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666435253

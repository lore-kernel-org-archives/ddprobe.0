Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAC1D4C89
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 17:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7151BC433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 17:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670002254;
	bh=78sJleto0yq/dptwj47ZIqKop7f7WpMHkB5JMAh67Sg=;
	h=To:Subject:From:Date:From;
	b=Tpd+5d8PM6yl7FBrvI9oyut274C7apYtqmAda73gDDmmLKOi7EyDUgIIUcPy7pqfW
	 /jOc6wMQShFGMS18nMZht7Vw1lUqm0kpawh7639fnrN8nm9dKdjyVdQ2daIC95MJzC
	 +WTXcQUDBwSlrefjqc/VVJ563zZDoL5xqbQBs1dCSdgmnU7UNj/TqrovJiBR9l863m
	 jyLaOaydb+U09k6/qwpSdvozfoISdc/vlTF2MOZjWAnD44xE6cwMJPTQzVqitOAb+g
	 ++inyCYWzjpl/4YABCPUkLZi7C3MlQJ2QdoFRNHdFYyy56/lDu/2lq4qdYIqSkNtux
	 XKCTFOzr4oX8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5492FC4332F
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 17:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167000225433.19157.3519339056753889068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d33d49da88ae9518affaf563861e4020becc0327d91200b5bdb6e0fc36fabdff
Date: Fri, 02 Dec 2022 17:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670002254

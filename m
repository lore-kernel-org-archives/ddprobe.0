Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 483E3A938
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 22:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB5EEC433D2
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 22:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677882425;
	bh=PwvSV84vEh1Db5bxXOfyqkX5Oy8jqk55SonpI0XKk7M=;
	h=To:Subject:From:Date:From;
	b=fTeF/5UUO/U7QQ2IuaJGmmz4Ug3VnrYuPGiS+TewX3iXGel6vF5xCrgerwXyp0B3L
	 ReBbhdu6RTy6iyWD0uvgk4KXzsSxE49npaY8mmKARw7Vobw6wqL//XRiizMzodJ5t4
	 PIqKVFxljEnEZaf6o2YE82Hu1PgXsmx3mploDtsKEqsyARCKf4rGgaWe/2vlAMAfg2
	 BrsFcNHTOE84tg9iMtb0Sm6O0fQiNG9ARWeDJLgXUwgnqa0P4qlg86nWyy3juas1Q7
	 qLRJK7Bi+VsSx1WZ8lrcpfU4d8jE52QIZuwBYojrj/rb6KfRIlaabReEgxj72UAomt
	 GdxNtNEzbmUDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6698C61DA3
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 22:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167788242573.10912.4150533679347457312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d301b0a4231e52471c0c9d3e3ec0d7e2c5f565ec0132c1a9de3c872a0b2ab54e
Date: Fri, 03 Mar 2023 22:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677882425

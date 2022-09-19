Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B72784A1F
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 11:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70F40C433D7
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 11:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663587653;
	bh=ihG3v5bADpn+n9AAApdCt7/hkQp7J7qcqO75kSEBBcc=;
	h=To:Subject:From:Date:From;
	b=odkkH6JaCUR91fSj0gQnDpwyfo0sIiCfrLBNUUWVfrybWVDWYg3WzHabqsoq/o7Qr
	 Zfgpz2DF4aO3gqDWRzfZKGZjgFtlnPdXpr8D6mrEUbMNOAs0Z7v6gTHpxdhHqwvckQ
	 lAFqok7D60IsisZEo6cS+DJqIQjRymw4KF6mN/OuirPqH6EFWR/7wjxXuZBF7ogto1
	 sm2frhMnINZ3S9xcmX7SoVvZN/1EThZ6Qv0bv5enQ/Ga8zczx8UwK3QaC6rTeDbZhM
	 h/Kboh2SNEcUd7DyJk2F4FL6/UNzzsdQH9W1TOtaWUVG1GgaJvr9/Wnzd2A42KV84q
	 PjGx49XwEJJwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4ED5FECAAD3
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 11:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166358765331.21204.4384752822941408577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 005ffb658109c60b284e5a684fc27f48c6956fb81ff2f950010b8dbf937ad394
Date: Mon, 19 Sep 2022 11:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663587653

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A82701EA01
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 17:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6775BC433D7
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 17:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667410254;
	bh=AEEzKPNB29uQ/Sa8iJO7Jj6ZyrPVJb7N8tHP4+6JlZ0=;
	h=To:Subject:From:Date:From;
	b=nSBuwZ70dmgs0bNa2v6R7YuYzu58w40byBuv8WM1JDBnPDmYN+sFW9QltceDp/174
	 KBjBw1B3U2iU9HTFBX5n7nikHdhlED884xlH9DG/QdsGe3r4L4Cdu2bWFJcQFRzDbk
	 TLn7mt7CBX9ON8WRAB1zUiSIfILZdzDaLEydrjhFNuzfsew9kH5eHjpT2dHARNGb8P
	 9QIV2f9ZjODztXR3FN+CL7Sdp29CXUemGN/BbA0MQeTpXfCYhyiMj+ln++mETa2B65
	 US5gX1Xkeeqw5bT5nUff2AD7NFGPujauGmc1TMALLNga6UjAYnwjWJ/NmOhJ4JuT7t
	 HCFN1TpTmvSxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 514EFC433FE
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 17:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166741025432.28092.1018031024744019122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 299a5169bf9894a0e47a9b2c9a0dc4907017c4fc02dea20b274c99b8d7a98782
Date: Wed, 02 Nov 2022 17:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667410254

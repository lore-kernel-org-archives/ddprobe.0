Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE41717D0
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 05:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 737CDC433C1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 05:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669525254;
	bh=dP4DiYIL33uQxOmkS3iDQCXfAJdo62um07MBjZDBmZg=;
	h=To:Subject:From:Date:From;
	b=OQVb5YVQMaIpMN3cFr6OkMo3cCwaBhliEhju9Y2fRu73nTKvpzkJ1N8nH0n84Tsdo
	 ftE01ROSJFXQuP7G+i/ojjI5tSGgn/+DyAK7KbQVJN3qHoqkSJBOiPf60WgUIkUsS1
	 odJczJCFLd7oGAUy7DRefMFw2U0W3Q/wSy/cJfzD+x/TAowkEgmBVViLJdwVNlGH5n
	 LFq7HQ6Ysb72jGJY35kPOJAEoqkt27C5g9oRFSXUT7mWJikTSKuLflISWqefGeooWU
	 9Caa6ram+9Fu9aIyAabMS+UYFqO9QbbKXd13W1IRyNT5Sa5dqc8+TWYb2212GWId80
	 cJy3l4DpHicwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59468C4332F
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 05:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166952525432.8660.9505874608538175410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54ca6ce303b63b21628f07476972a6ffe7150ed11b9d1d0862fb720b73b79049
Date: Sun, 27 Nov 2022 05:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669525254

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCB8F4685
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 21:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E70BC433D6
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 21:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663191653;
	bh=+uaCOqXBimd015yYQKzGI6+ODLRNhyCxUJqV6l4GHHk=;
	h=To:Subject:From:Date:From;
	b=ZO6Uh1ahlioCUM7DbtclxwMWxCE9KSZqiPs99x8spuhut9CQc/NqauHdc0Rta2aVE
	 qNJmKAVwh4OFX4azJzIsmYfJOAtXfWGkgiy54q5uI+Yli5OKvy6B7s8PYF+TDiWMrU
	 tWnyA/P1bUOHW2Qx9zAr++e0eUttpHlifNthI7tvc42us1PvyBztbWECJDF1HvKmIu
	 hq6zVM06cAQN7nJ1x2wQQZwLWyK07qK8qSRJb8F+aFHTrmenXFUksUiM2bFeAW1BtK
	 uQiDTrwAjdSgmlFO38KvMDMUbdgsNSOmtMC7TONau7L3GC7S69zlxOmOJgiYufpU8H
	 W1gQ2zVIsGbPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51BA5ECAAD3
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 21:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166319165331.457.11075865276701312026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c29dcf1f3346fd6b0eac669fe75f98258fd7443f2097cd19afe8a68a159a905
Date: Wed, 14 Sep 2022 21:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663191653

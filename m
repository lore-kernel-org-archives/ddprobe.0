Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D823B2560
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 10:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78781C433D6
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 10:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670148054;
	bh=Mkkf7+UN/xzzzKtGUouQi6SQnkOWA/Yt06tSMnokNkA=;
	h=To:Subject:From:Date:From;
	b=PVZNHFVmY6vCikYn47IDPKLmb52yCORgyGUggBJZAXygQBjHEDliZuM0H85x8NmM4
	 vhjvoGUquYXEnxz2PMB0kLpIQDdQ7SeO/dm/WRjgZ+aV7eEk7oeG7wfa2K0AqidMua
	 l1xI+bCqrNxicMkPvpWoggLY/1fzmrjfGTmUwWgtQD6B8rjIvRex+3aOfYE0rLf64C
	 kl/lJx02s7Mqq5OZzGyWe+/UHPF1EQFCxh/ilnrReoZMYJRUJlYZTGQ5S9Vpt3Sk96
	 iqT6cyO082wois4/8ZdsWG5Nt7bGz4zDWm2GU5ZirGNwY1Qr2/aJHhAa/7szxiLNai
	 hyVFHkR7naa2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CA1FC4332F
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 10:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167014805434.11907.117015549303810925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c915a54eea5702dfc6767e21117348d809c614454b1a72cada967fdc4c09ed2
Date: Sun, 04 Dec 2022 10:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670148054

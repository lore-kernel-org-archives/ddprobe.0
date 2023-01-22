Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37698648
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 11:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAB90C433EF
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 11:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674385325;
	bh=OCdwN11FkczYLgxGxdFnVjxsMC8bgnUIv4nBx3NCfsY=;
	h=To:Subject:From:Date:From;
	b=lwJT0NVjtU5sYZDQY1bHQA7uAqz3f1e6gYieYApn34eyzcRqjbRfaim5notOnnHyc
	 tT3WDT+LgW8CK/VZ/1LuvmDKfaEtlieroklycBbJjZj7tvZV8lEv9TKlvc77XLxXkw
	 9dVgFllYmfcd2+f0kSJIjpwCX9s0y2CYwA3+VQq3hhPInnK677ElduCypBxg1HcV8Y
	 PCaYTPbtH1CIII5Z4IokEgCFes/f37zTfiLuHaJb1sEo1jSqzmfK2dmfcZKPT5y77B
	 UyUZglYgLctLeERtQT21t0m/3Xt8nzQOKH/GsQv2QPHhiy2mXnpsr7hO+HihzP/jIl
	 oSEI6V+9bVs7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC041C25B4E
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 11:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167438532574.7828.11896913374785708480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da83517d75de0290d59015c7dbe114d0f4929562efecc3ddea9e68eccd73cebe
Date: Sun, 22 Jan 2023 11:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674385325

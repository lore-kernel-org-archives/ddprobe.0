Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E37C46FD9
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 22:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FF96C433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 22:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670882487;
	bh=iiwD6LXBfWZEEQRbE0WbnEtlotjRCSLmpfUM9pza+6M=;
	h=To:Subject:From:Date:From;
	b=g3QNU0/24ZritFyWJgCMfN9PuT2EOpbq5qiqyxFJr3kQzjyTV9oAUhTft2tnrt1si
	 bxaD7IO+0g897J63vdWeR7F+7zcoIn6iM3O8Rf4mEDUSYPXESAdR61+sTzYJUWm6li
	 ypKsiNw5R3cEho3Hax7cShXABENvVTg4wQabvv+mWWgmLWwgnCoO8fBqvJw4zQ8QNv
	 2VQms+xtbFQacbtcD4jBnWje7afUUCg27W6MICRQPeMjv6EShJ5k9sNV7ACrRFZ22g
	 xntTwG0wlnJKBiyXovLj2suP49Qs0apBl0KOSrwIx8XExFWl9bIf6Cjyq3LBOWuVd+
	 IpZXGqkp4h5YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 675B8C4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 22:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167088248741.8692.2256290572116850313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0184c03b8d1f3b7d3852efc4e30caf22b4aabc37dfbb2374f898c49ac9eff0fa
Date: Mon, 12 Dec 2022 22:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670882487

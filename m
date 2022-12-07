Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5877376
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 01:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84287C433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 01:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670377254;
	bh=AIPgmtaYwhL49jpABOHj3nkq9LTzYWb0Xlt4IQJ0BUw=;
	h=To:Subject:From:Date:From;
	b=PdDNbnYpAm0QCXgh1ltOGgqHVB2QW5nw9sK+uJrPr0G74DmLhsvOyi3lzGZ9AHUs9
	 YpmzusehbUk3kENq7dIvQqCj147HN5z3G4sBitm8YCVhjDhwMhGkvq+IioYFxoa80Z
	 Jg2jJ8w4D1QEe+0aTV564ufV5SaxON+Dh5WWo+at9+LFkq0hxPfJVPYG6/2HDp1mrc
	 c603AchpVE/T5MvPZV0P2TDzrHpstKz/wfFy0AxVbq91ed4Az2BA3evDkL48vm6NeV
	 RnUsycRIBReHXrvJkD83DF5Vmg08ksnsz7Gs3v66Pw0A+CSc36rXGZn9bY+poWlkm8
	 Q0z+6VSjcnuXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 663C8C352A1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 01:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167037725440.3793.14359024330846882656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63e6f9a15a0cd25d9fc5d7d7660cce87ec5f7075028bb03fac6bbcafaca77e91
Date: Wed, 07 Dec 2022 01:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670377254

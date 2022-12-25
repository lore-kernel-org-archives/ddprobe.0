Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1627720E2
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 20:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22C4C433D2
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 20:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671998487;
	bh=mzk/IiD+nmAfps9HDVI1cBwsjThfpmQDoVPWSMHFLl8=;
	h=To:Subject:From:Date:From;
	b=t7O+Dg6NqbHomzsSl1vIXRYwrox0/OHn6SVPEsi8kkSZO8O5nf/i6nWYGq1U1Tz/O
	 i4JoToiZK5kCC2lOYoSeC7R+uRuFKh5OF+QoDSxlZHfPNYniDGm9MxEAHFSJhxA6zL
	 5/f+COC5wv2cDTgy4Yp2MvDQPiypcKexswEW0UURAhK+LKQJqa3HrRiZ6OqnN4ECJr
	 t8HZyLqwVulN3QvUijwoqjhWOgBw6krjX8UfHp2oe1rc8g0U9kHFVHPgvfndJMNcV8
	 x4cJfcqzmIC89nfStva66alX7cv4C2hHQrb3MxLuqUPpw1sUbit9yXqXAf6N0LFOL4
	 s6g/Pw6sKJNLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7DBC7C3DA7A
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 20:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167199848748.30073.5402658769188131992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3019afeef24b89f6fa92c98a64c3e4fb7c931d8556c6e310e0d5a37917b4ecde
Date: Sun, 25 Dec 2022 20:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671998487

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BEE7443A
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 14:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5466C433C8
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 14:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691417588;
	bh=QHi/L2D2FkeHPYz3ht4oPpr8EF8IeP1zZi0n/akYESk=;
	h=To:Subject:From:Date:From;
	b=lsOL69WcdbYKlhXg3zlRRovsGCnaG7uI+K/i9NaSt9d/oUvwWv27mBY/Wp0mi5dms
	 CFwM70UBh7IjGdhQzzoluJ5NXCqlg1eEE7rBR1CkjcwBV595AzYY3OIbS3lKLtW/yN
	 66LhoxXzXn9rNVDYfO+aZefjCQETpXWtO7bML2nm4HTODlVoKZ3tMT+EB9SmkMYwHT
	 ncxz2Gpj9yvAhZEGbX/d4D+hwmp4hUjL++4W/SrCYfn4AR+sNzar0p8+zsE+TsM8Hq
	 RiS0b1qUW06+hPIEfsqrZlJnLae3EaN6TaIhzDGBDPGNTnt3aOhQXjnXuZWne83vjV
	 USQxsQ0SFZOGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B49D8C001B0
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 14:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169141758872.20043.17262664727244344461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1b533dde89f365e98bd34629937ecc8cb6b4e41341c87010083953ae776a83a
Date: Mon, 07 Aug 2023 14:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691417588

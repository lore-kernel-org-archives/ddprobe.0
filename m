Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3FCE1FAA
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 01:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AC88C433C1
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 01:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663033853;
	bh=ikiEvWPl5NAyL8JQ+tvAQbf6gSafrRQwNxAA+jz4yoA=;
	h=To:Subject:From:Date:From;
	b=dE9l9GJobOa1WqHmD6JX6Fc6Lvdf3gtQ3xn5T/08v6b8sjZQvYKj0ZE7LeBcT7myC
	 d1aTAxBNRzPiyn6F75jmXBi7gpwBnSFHKeSQY6Zygc5XywspSawm+vUWmR7E6pL7qO
	 z2MXP+QFYr2D2T0GU8ZbJOLPpyGSfegX3Ch9XLbyv9htPkTj51it0ymW7AXA68kaZT
	 lhkrMo7oXcr2fo7rrUIN1HoyqJZzIQyUDxtenuyV4vzUtgTtSw/VO7kxcE1Nf8UfK5
	 weM9qBSVNA43DTzxyi+W6UK+fHTMYWC4a2oIhPVsTIf6yw66d5nXV2PTcNYlDIhYer
	 buo77eW/a/S9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FE24ECAAA1
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 01:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166303385332.15531.13934107925348260477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10a85cd32a6e56254bffcbea6b399312216765c746391015b4cb2f12f587e9c3
Date: Tue, 13 Sep 2022 01:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663033853

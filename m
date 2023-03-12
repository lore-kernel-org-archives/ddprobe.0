Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 412CC1360
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 00:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E32CCC433D2
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 00:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678579565;
	bh=QbldOqJ2eXF2o1fnqsRyl96FeU0EHuWBs6V+W0uoUww=;
	h=To:Subject:From:Date:From;
	b=hErEoDboHfQlNgpHiznWi5xijfSHxQujBwHINuj8sFpjv548T0qpntfUDRapvVEgq
	 p1dFTQOeGku3rtkHFKkNkVlSHjqAWZrHq5bccGzEyuTRv7BOYN4ra9TzCiXDeq4R4u
	 Y/+cNQbl44NyqtNFzEkZM8LuHUp+JRx/G0q3mLc0Wjdr5NRYkYSJg/5KZyWT7SNz76
	 WbrzFilyPaJ7WW5zDF7oYB4msr74hxWWI35E/6Is6nAGv83Ay/QKzIZL8uZlnclCns
	 grFhC4nJVj8poWVHozeHNwB9w0pBjOVqSbv53jMpQ/aUZV4A/LYokidPYeWiMK9RDi
	 2aXlWWrq5Bz6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5F62C61DA4
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 00:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167857956580.12662.1206197292737417250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fef328d48104d636f7bd71c66e2439236ab0bb9fb7210f108d6987e5010bbbe
Date: Sun, 12 Mar 2023 00:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678579565

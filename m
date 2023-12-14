Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2166A2557D
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 09:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oam8Df7A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E610C433C7
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 09:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702544896;
	bh=oCPhdiJYsyPtetI4Fy6as+vzBjkvHjA3UJEgs7yuzlM=;
	h=To:Subject:From:Date:From;
	b=Oam8Df7AEdz0Kn9ilhKbEGD2t3Fg+tWv0xVfz7iVJrA9YSDI4vUP3mXUDg/2/9QLJ
	 Uj9kQeY762QcJArF6KBqPgVF3vaDtRjSjgzT0b+X43I72lvwTjSm05r6YXw7xe1XKe
	 a6d4cElcwltsRA2CqtTGJ58LEIGjHjjc2AWMI6qBQK/ULNeJ6Kgi21CAraw1DaRqKu
	 iOH41bzJiGFJ0SG5J+hZBj+ZmI0cKGbEARRLL3TrQ+ZGBh0rlM8jAo2ucAlBg/2NF4
	 fcfNxfkiyo4EvzT3DvcudO+4IpBHMHkL1wecJHhaQNZMJf/RiJGD6qz8O+Oi08LBRm
	 9TM6kYil1k2Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FEBCC4332F
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 09:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170254489638.13600.6715765932003059220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 742c1f1efa5cf78dc9f23bfef86b00fb9482eb9f49f5c0688c61727c3b2ef19c
Date: Thu, 14 Dec 2023 09:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702544896

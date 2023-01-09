Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E649223A3
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 23:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A96AC433D2
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 23:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673305887;
	bh=EH2Dacks4phziANfNyfxbgKRo1DfuLS18OmKCWUW9/Q=;
	h=To:Subject:From:Date:From;
	b=tGai6Cv6wz4bQBDgC+jrF4v6iGpjej5lPxiIO1ynhZyU5btrHzXEUxhGAJTJrsbJx
	 2MTV36M6J48HkONc7aVEGw2UCgXHwO01X6yaCMAa5xU5Z8WdzzWoPxxNr0zpZJHjCH
	 KyIeqsaPb5K9LiuwjaRZgzQdRN5OBrTIb3PgEc748teGHG1njclCwH6MJWjXHj44+r
	 ZId+snY8o4pjnvZfdHKce/VKxqNGO4OKHVaplUZqnxAVp+m+O1K0KbEmAMwEN9gU1e
	 2M9sXlq4sJaoerYOI32X9120RfaWXG0NpCdUUTcH3dF04bgl+ghwwoFGZIEageZWBc
	 E1AcoKEQkWIqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69FB2C5479D
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 23:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167330588742.3007.3698350063157779399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78d6c76bc802d759845b01feb007e1e285525f09c459223788c5ae0e83abf504
Date: Mon, 09 Jan 2023 23:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673305887

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 463D4A49
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 01:31:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC0C6C433C8
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 01:31:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689557468;
	bh=drdQk5HzilMiKlZ43V84Uz2ifxRygYpCPmGznNDcnos=;
	h=To:Subject:From:Date:From;
	b=iE/a/ygcMqBv4SUSISsWoslMY6Fg0illecHrbwrpDWKmKz7FC8WvDDqoDMYBCJ4gy
	 6eOZdpldWQTT7iheZiYGN1UMFkx5fwevAWURRUo7JyTir++b8f5P1Kha+yoLs8aLn+
	 dlx8Lg7EuDIf91E8AeapPhxIAoj4k4aS+8HgWg6pjo01xzjgWkOCagUtuSb1LrcRd8
	 jq6t08ewROn7GFReXRK+3y8dmSg3nU7Ea0keMAlrHpmBhlpNduwDbOeCmV1l2sO4hI
	 x6qMb/zCK0AXh5YYz4u/JWedYgMzeBZksg20OgcSVTF+8kWa5SzfuYZzi7gMUsMCMn
	 YqdRMIONo417Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6EA5EB64DD
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 01:31:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168955746867.25410.4667666746851682860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b291b8534f4cc3ebd1e1a095645a3dd121df1c25273385d179e20b3e7b40def
Date: Mon, 17 Jul 2023 01:31:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689557468

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C89810792
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 22:20:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D06F3C433EF
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 22:20:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678227605;
	bh=w9XmTD/zoTgqL8VrV1IiRfhHVlLKlfRX0j6vCmlDToo=;
	h=To:Subject:From:Date:From;
	b=BCirgDgih+8OEIERI1aIz3Hiy78CCfXsnsuVFc//rSSYmcUiwslKXsWKG6HjkcdjC
	 SFpT8KL38+EzmNylkf8kOGNR1kn/gbrx7h9W2hMPORNTgvxTW71KUS4jWzkoOj2exW
	 NrPXlmxUpfRX5CfnhoUROskZi/b8SpxHr4a+Lu9rPQW54vZbUId+zE2AiBf+FBxOOu
	 CvKWaR98Zj+z7B1HYpU38d7lFW1gGIq/joR97TZmclhRPm4vYMg+2hPJ8NuRH8H/SN
	 J7oGkV7ipgVzrgRCOJnxWczP0YExGd42EkjdySEbqu16oxdY1KmAOO+J8eSQfjjInW
	 rhWVV/rN9Hr7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7344C6FD1E
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 22:20:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167822760574.30014.13189177543359933810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c4e022d59b1b4fe904da9e37b77916c4c16ecaf400fcfb114000079f8e104a3
Date: Tue, 07 Mar 2023 22:20:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678227605

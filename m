Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3DBDEA4
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 10:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7280AC433C1
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 10:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668249654;
	bh=XSCOUFHQNYOAwhaGV4wup7YfCPg3W9H1fWSU/BF8U5U=;
	h=To:Subject:From:Date:From;
	b=K/KogV09lNEwEpt56/q+DFJrv8PhagNumlrcbcucGFDTT3jsv5g+D5kR3idpBQzuy
	 8uKpMQwULljd70KuRugeQ1TW9rNnN08qopjT+fCqzI7McH8Q2QBx2uFO/t0kbVHbM4
	 lNEUMkzl1RWvr/rTTho4o9dC732hLh83neNkTYI8/Se8KTrpJ4RhlrT3VE8g0UMZU/
	 N56SzYXs5mPx5MPZfmgMQSYD1wtobChPl7mBZVPox9CNc8G/jsReJ5+D35HG1qDk+A
	 m5Iv8aFwm+9NqgfsFKZv8TquwUL68ArLrHKv4Ak3vqU7tuCbeldFo72CW4/jtpqTDe
	 0U2y82FN0KKBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 575E9C4332F
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 10:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166824965433.26093.10429923522582805857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60205245ba69037fc9de20e445ad063823bce9fd06a25c7dba162599bb66b952
Date: Sat, 12 Nov 2022 10:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668249654

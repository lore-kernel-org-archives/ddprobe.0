Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFA537B
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 20:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7205FC433C1
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 20:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666558253;
	bh=YZCn9Nt30Xj6bFA/MYMPN5EtlV2LSv4poCaE3/PWTZU=;
	h=To:Subject:From:Date:From;
	b=sSbl/SKfyCgCPaZn35M6sc6o9ju/ZPLGUFxGmxLggLHgpcYZC+T9BgnqlXe5IUlog
	 Z1pqMHfSGQQjPPe6f32aDzDyH6Ugx4qgglIPdn6Xl8oZpZrwgGwQjWvelEfQxfMwA+
	 f4UWkxwDkRLIFRBBjk8HS1kiiWEcFDQr6x/kiZVOoX9s8FMfp7VZOSBCyWCnrYDeCb
	 VplCnNe6KrdV6blSfG5eVj954lsMe53E4V2T4rVczyxMLpH9R44vTFyPaTfLbHKcLL
	 JnZYREq1hRsyTvoqnHmqEeA7Rnjwjqkxtw+uumfLk4HG91cVvfVWvo3nhcZfWraCwu
	 6RV+C5mYPcx4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57F06C433FE
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 20:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166655825333.754.12265488652239696548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f3bdfd1a1c06ad1d2b1d7d4cb7883a40db6feda1afb3df797e37858598cb915
Date: Sun, 23 Oct 2022 20:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666558253

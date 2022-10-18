Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0A561FAF
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 08:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7264DC433C1
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 08:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666080653;
	bh=RXTQGTX/RdqRfuiWT8V0+gpyWC86waWTUPJU6riaFHg=;
	h=To:Subject:From:Date:From;
	b=mwqQi0IhAp3/jLVwakr+7fFeWXcit0Am9vkC+1fHX7JFS56Ausst54VyspLXIgT+D
	 hyZP5rPKcN7swBI9tjDBT8yfTI/texu7wpfuAxcIKKgP0inTFAIwAchpgKPwK7xTtT
	 gkZKDJvW2OVakn9HdH8RwJYjhLxWD1M5E6PWQ2w3nzivNOn6MAfaAunRZ5265DMcPj
	 Zao2AgGxNsQ3lRiAwGbHu7Ec4FSq/phY9DAjKN+B+36gv6xYmTOnqvgBJ9rDjwPPE/
	 qLmLU/7hHkzv8e/pC1FtDPJAlSKCV4NfghXmsLXLJUajzHx9uzzkU6SE96d6udwapJ
	 OIS9K9TWDLD2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54E91C433FE
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 08:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166608065334.16599.6784538610610521461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7beed8517c38460cf8443236dd1e2068e19960036f96ee543c00e134c4448ba2
Date: Tue, 18 Oct 2022 08:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666080653

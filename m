Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BAFF139A
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 08:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E21EBC433D2
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 08:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681635365;
	bh=NIWhfWNyC29RF8Z0R7rG/qERzvkP3lLn/D/Fb01YmBI=;
	h=To:Subject:From:Date:From;
	b=iYMWpfwIncDa4vApK8I9aOAP1UlKXQPjztJyrdFJBUZKgAPBpAKKX+rwnCfD7DhtB
	 gVowX916Pl6wNp31OWZp10Cz9vJ7dLeSbfrhpXHJ/oAlFpzjKyXtrI9ZO2P93acjnK
	 aFUNgONHaaKMY+R3H+GFEO9zPC1sp+kTgBbn00mc88N5jPydbb7BiQKUGtZ9WvnrOP
	 hKuXkRX4jV5o8gI8Gje4JnQWG4bGdlhMBc0C0TSBzolIEC+F++Yo+qWJND16nPficw
	 pWbTgyYXyNq1wW/jerejuU9adF3mImIO7u45BaIl3CT9YEGMuUL3NZmyjaFQGMYt9b
	 SOKnrRrRKkHwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0A46C77B61
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 08:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168163536577.26749.11681194152893927580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02dfc06b211749feb34b680d872a3fbcba5e60701a69218c75dec6fb07ef7832
Date: Sun, 16 Apr 2023 08:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681635365

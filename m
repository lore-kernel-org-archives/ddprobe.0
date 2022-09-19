Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D16C07462
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 20:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DE66C433D6
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 20:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663617653;
	bh=xORfAxsU1WpWh81X00FvErvRV01rdq6gzgzB3JQOm1k=;
	h=To:Subject:From:Date:From;
	b=oknBLY1xHaw4J0cMv1XT/1Gqr0jBBptrsl1Ar6fDvTV1UhpdVWp24Wfwx5nH7kEuL
	 rXLKahGrAGYqVDm6E3WHAIZpHksiASCkNvUqlBOkqQemj/dIVRyrYiqqSW4JP5BFh5
	 wa5gYTBM6fqPhdaBJHqFa2/J+h4uV5sjnwIbi15rGXAOEkpNY1fd5qloKzjmINivNF
	 jfGq2FaGTH6HVGKq4/O/6WFRD14J8/tXrpfBbsgfGgixx3nmsfgka1EOL9QhKDFFfz
	 GXhbaQ0722wJrTJblh6mmvPvZd/VYw9pIAWKVr02sFgZ7bv8fFumQHdaot3Y0dx8lz
	 rKbJ/GPGrjhwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C1A7ECAAA1
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 20:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166361765334.30911.6814426452270656447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b29ab00c9ce01dd7453c3fb8f1f04072128bbcff7a7914fb968fd8d2482192e6
Date: Mon, 19 Sep 2022 20:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663617653

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 502D11AA8A
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 18:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4F8FC433CA
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 18:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692383048;
	bh=NP8ZFlCmpWK5PF5+aYsl4otbachFc8AeiNomCKCG9P4=;
	h=To:Subject:From:Date:From;
	b=aaITo9nplXZOv/3jt6i615Up41nU5GxEyWOF2Gr7jcI3yqrSTjwZi5AUSBE9UY6F7
	 bltrPDn3UJ1iEwgNd99WNi9fEJnz0kWXuZoWURAxHpNuOFx+pa2gYINAoFu0iD9SGH
	 tFo9U2PR2F/7NgJiE6cDZ/J1slPDSs+lDwnJt2UXpSxBSbp5T/m2j7lFDEhT8SqbS4
	 8kPNbjttBvZKvflrb3Emy/g1sALegmDIfJi5GVfqR3yMUaJpoYHQa46Sd3cbtSMjzr
	 qTWg7Q0KZzf7oypZF4YvHJzZpcLwiPeh7/+f9vxPRc7oNr9PsV2JO5/WhR6dH3m/l/
	 6oTXzX50hppQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B021FEE498B
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 18:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169238304870.21399.14246407465865230834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8a770af29adfa6bc00ec189bd466a2714847e3c2a838abaf0849860eaef8567
Date: Fri, 18 Aug 2023 18:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692383048

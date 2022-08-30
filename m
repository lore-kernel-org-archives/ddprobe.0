Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBC0E5C94
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 20:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75148C433C1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 20:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661889653;
	bh=UZsoAGSqhPYip8n78dPWMmtVd7br919lXj6DkxK+kPY=;
	h=To:Subject:From:Date:From;
	b=NbJsQSlFALxZl9Sz6WEuV6hwXB8v4J2E4bzqxPM3vMv8fXdJ2D1ktP09YBM9wYCUW
	 C3yJ7w3ZwnEkoq9O58L9kP10uIfAAsqN0F2pA1NaFfeEGddiFeXYAMxX02uDiuZLx1
	 0tFKRWMyTlNVEJr3REp9mzfSENL68m7unjQVhX/gaQrnyO/ZP+7+AxWW6feWk5kdC7
	 JKDKv8qHbSdiTTWzXet96MuTLeib6dU3gsry/4Kaj79SP1AjJvhcZ0BWB9WBQgzR3T
	 yuXXT/GM4+rTzSeVy4gbWZEsv+jprcrA55H4HG5epTBxAMRn1pNJwJB17SWk9tVdqN
	 0+C669WL/PV9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58D17ECAAD5
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 20:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166188965335.25928.17529171571859560087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17e928bc12e6061e58a0427bac9eb17fec8888f15435ad18946401661e778dd0
Date: Tue, 30 Aug 2022 20:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661889653

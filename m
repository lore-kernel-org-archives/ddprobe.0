Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2C2D4C94
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 21:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B272C433C1
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 21:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661550052;
	bh=oI4mZckeE4JOW+l5NLQU2YaA9XfvwJveb8bfawVt4DE=;
	h=To:Subject:From:Date:From;
	b=dVbbBSuGP1/+J8gl8Gmuebvw4nLaj/QicfSDaAUqmrU+zt/wtzUmi+Jx4lG3xEGv5
	 Thn7amwwkNkqA8KEIQqR0uJnQHtvsE5f7tf5XQS9WvievRatxAUV7JjL7hZWOUmGmB
	 GK6reUWtCuPVAdR8Ezv3k8q1wDeZyfZGYCeI1EcZQTY0dM478nzKkampwMjdxQb9uS
	 f0vXV0zo//LGAGJt29/8zuegtgYw8tjj1KgCJSNjsPDSooo4MLl57/cjaghyAyfbSd
	 njSLt05vQ/2cUInY21Ds0KON4HrddqC04txh5mXJaC35HO946AuT+7kfOFfkvAE8tN
	 8LxmPvZKjv05Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54C69ECAAD8
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 21:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166155005233.22093.17806445292031648881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74f4e848a42ae89f94dd0384fd405f93ca39a2000130ec2d044e50d497aedcd9
Date: Fri, 26 Aug 2022 21:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661550052

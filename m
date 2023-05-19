Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 571FA3D78
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 08:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0AC3C433EF
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 08:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684485486;
	bh=K+fIRxVNrnIic44sJ7ntNii/kzRa8JAabnjPOjQz/Oo=;
	h=To:Subject:From:Date:From;
	b=te0hsSVcXr8hbBQHoKToOFrBzb7gDdOloaA0G7CpcwNL1sDaeUgaxbmECla/WxDy9
	 2NwCMONkff0yPPUKeHWI2Iuy2BU6Nzn0O4nTu+dOkyWNqT3GbsG2SXtngfkAw804im
	 ilVo1jaiVTTzUBZhT0jMORd7v+dwaVqhRcxzDKPBbXABjy5C/D5a9lcLZVUtzh/Z8A
	 I8ME5/Ls9afyFbZtkWiRSFwC0QIipe8Ox3ovPj2LspmJCdZF1+/VurYln1Yni1FkdD
	 3Ipb2de6qDgogT1MCDTWYK9BaJwIHprSx+v8gscMddNueZnNJMvUAG2TRLFewc98YG
	 uPE66OZ8uI0kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8945C77B7F
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 08:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168448548581.23932.4206413685499009808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2c4b9a8887b933b505f943a326acf6563c183555e2823a42631ae0421dcdd53
Date: Fri, 19 May 2023 08:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684485485

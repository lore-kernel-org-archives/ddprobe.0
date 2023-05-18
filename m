Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306583D383
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 18:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC16BC4339B
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 18:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684433765;
	bh=1khVJhXGXzKBEMeRsC/Yt+ZMiuAwlvSG5If5EVXAxDY=;
	h=To:Subject:From:Date:From;
	b=BU1boC4G2MCIPY6s1djCeMLG3fUWKvwZ6wPOraYti4rLpLeroKpUqU7jiz18XX5Iv
	 zWp1AwgfU81QBah21hnfoJL0JipsREqBYwnaXl4ps68edDreqMb1yAqHz/C2NODOi/
	 Ka2Ly0SM2sDi7ORGOd1Ism+loBu5vWerxIkAGf5S3ZQq5pQ6yhPJDIHujaaYrDjYxn
	 ie/TPk14+hZNVJlzFTV+CBwnJe/3NzhNUpi2Mj3zIfugrwMSBezenlQ8mxQLCCmDpX
	 tEakKmTXMlR64e8QDzyotX+rQdbp3Hh40D9cB3Roi2WnB0TVmKYsfc2rL5Ye9/Dndb
	 cj2D5XZQjh5Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEFE5C77B7D
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 18:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168443376577.8649.10384471386940759789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 104fdc37aae8dbb6ee192cbe1259a263f3925f59671531bc0cd9ede609f2f7d1
Date: Thu, 18 May 2023 18:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684433765

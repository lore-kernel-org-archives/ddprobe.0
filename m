Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 356E618E
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 00:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB133C433D2
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 00:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684973705;
	bh=ICQCSVUyEWDoQdH5e/st70OWCJ46ZWvt7ayj7xHHZuM=;
	h=To:Subject:From:Date:From;
	b=L1cNZziNt2HiEKQKWT5z+UQe4wkrgoUqDZdA2RZsYl3EWsu+MCFfknEINFeS2fE4H
	 se7EB2wp3SQSJXgu9pf1Ogf6WwStsEYRjwbgN7tZVBZxUzDHXUH9XRQHGGQNyM6mkC
	 tAA5cdz50sIjFDgWUcEMGzmQKGgfj8fqJ65SaP3m40G4H7hNy3ddtAv/Bk+rL4q/8W
	 //vQbjfK9cSgRxTaEkhQduZKYVM36xzXO/YhjCGkdu3ul965bIdiKZh60zHxpPoT9a
	 F8amGVUUaa8KhOupcBpMx96AVH0hsXQ2vs1l/rqcQdmHWSPnilIZp5RSiZRmjIQZJw
	 FoTOrTvl6tVbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF37CC77B7C
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 00:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168497370577.27136.5823035301992253314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23a99d05289a036b4128abc1ee372e1f7151048878cc1ac2bd637c030aa125f8
Date: Thu, 25 May 2023 00:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684973705

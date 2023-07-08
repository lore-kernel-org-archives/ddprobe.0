Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70C49A941
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 20:27:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1316C433C7
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 20:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688848028;
	bh=W1MNP/Or6BFz7TyHtXl9JCn2wNUT9p4wx1ze6X+SFmE=;
	h=To:Subject:From:Date:From;
	b=k/6ijqTgWtkh7jLJtd5saVHW3rbCxvs93NMNFjz2KmZJbog3EP1U/Zd30JSP1QWyS
	 C68po/sCIq8VloghUNJDwfNupd0fUoDlvRyrK/+MnbN5yMSLfz6LtDZxCeACZ22l6F
	 ivXJQvKCzQX7Vjl0DcTCjMBG+oIkuRGOcas0EvKplGxA5ii2SJ9h4ocPqW6Z8cLnjr
	 c6c6pOzefJUIdLKdf3HIl45hI/ExwJppepsVHcn+INfoC21c0wxJpuPa8b4Uq5eCEF
	 T9xjiTYKrJkYG4l7xRfsiNSZpY9b4rtir5ue0joZoQnE2ZS8IYOAD9o3oUHwQLXA3o
	 qvKjc7FnZfm8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B153AEB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 20:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168884802871.27156.18179495759327956501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 992edeb97ccf7de74439cfbacc8737917aac4f981e45a620e43bc6673c410427
Date: Sat, 08 Jul 2023 20:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688848028

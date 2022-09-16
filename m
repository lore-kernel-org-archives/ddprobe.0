Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDE7E17FE
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 21:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81504C433D7
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 21:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663362053;
	bh=f78VtNywS8ZA15vAG+DVDYoW6o5SRjEIGjoVKBca7kI=;
	h=To:Subject:From:Date:From;
	b=HMCQjtUCzKRQo2KZtR1WvqPgDRet9rDg/Cek/0itcnxTRWwfXZlDmuRXgKDfE3l5+
	 rOolBYBIv641Wgn+ojr8el7irso35fhLAs9pYm6vcBwwG0h/OgJySwj5UM1fWZfpG+
	 AyViaaVwBBdFvysJzggBq+1CeTqnqUi1YS9be4UcLhTUzZT5ObLytCgUGpo2XvXfNK
	 LqHu3TK0YFZ1kgFaEk853anHla0DbKZfN77pFEHreStGoMkYclqy+B3uSnGhBHbtKR
	 tt/u/c/3mLcefy+pdfIpKUR2Y3ffDfjd7vs1Pq76/anFPsDpyVefGZRdSEiGSstPFP
	 0NB1rzdkSwbLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D793ECAAD8
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 21:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166336205337.7414.13935056644418900965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebf592303500870fa1ca0551f209bd551507c4bde6128af8eaf68a86a7060d10
Date: Fri, 16 Sep 2022 21:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663362053

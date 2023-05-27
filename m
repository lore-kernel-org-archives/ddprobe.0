Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E1443D67
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 09:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDF0DC433EF
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 09:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685179685;
	bh=f3KMs8xHdsAceuFwgSfNqN6kG6Jf8J0bVo7pbRGwnTo=;
	h=To:Subject:From:Date:From;
	b=mcb3kSJ/4n2W/YkydDZy3eFoo0mu/9ZqVwVBz/81xDEXcWf5vQb9SioTNzck7D1bw
	 ATPDfGYA1nbrCSIbse9Rq2SdLmJwM/5LFQh6OQc2/ulv6cwVzKiT1LuM6rYapdAxtJ
	 tMRw5Ui+s/eo75kXkAv5odYNXvD8GQdmAFtdQJm5W6eBUOGByMBRAp+xcRKmoKOsEr
	 ReoEestJkzAHAsOElaRfkSB1FASE9d9sXx/ZnF5PikyQWZpdZ1QwFttIE3LIvJolmR
	 psdEIBpzZwKhM82vSdOGRn/q8aoxM6LcIgSzdClP+2hGq10L7TUPrkLhNxSpFEsMKm
	 ReWLxD6LGQ1jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0DB7C7EE2C
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 09:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168517968577.9089.5210504798608439765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75deadf4a7ce403b538532c7018e36c276f19c2fe65e7aaf85d3472656376a22
Date: Sat, 27 May 2023 09:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685179685

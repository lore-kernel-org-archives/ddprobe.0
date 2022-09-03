Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B46B47D8E
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 09:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68065C433D6
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 09:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662198653;
	bh=C5Lso+Ys8s/P4nNly42s+MtTwviQSA02P6tbRCplTQo=;
	h=To:Subject:From:Date:From;
	b=QciBay0IXzvsHCy5xzyu57u3PhXeO5IUboi1JIpn1bkdR7F7mCtQFbDYI3xBoU2Ns
	 gI0s1C7wPWvAXG5Tl5g+xTsRhD0z6GNXl2hcPZCY4fKPl8DH6RJJdq2meTj5d+eFZo
	 JBMMLwizgXElxuMKqOa/WuwgI3rc2wLC3uY5CeDzOYQX/aAm152uGr8qFZq1w3NiyH
	 35rzWLXxSYQfxYTymSN6hNZp2ExJQO6MEcEqDpdQdllU0cavM5Lf0dGLZiAc1feBUI
	 miPr091t5syLICLMuagxghWKFs4UwCgoe8Ktyf9beY0E+oFC3ybFESgX2nbR7uJn6+
	 frgFqP0zJQCWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5373AECAAD5
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 09:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166219865333.4213.2609965084502677669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7956d4a96cd6ba23d1762b9a0055a6ab8d5b282b88c1dd972536a3b9dd293cec
Date: Sat, 03 Sep 2022 09:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662198653

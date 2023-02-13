Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 281A67E
	for <ddprobe@lists.linux.dev>; Mon, 13 Feb 2023 00:44:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D375EC433EF
	for <ddprobe@lists.linux.dev>; Mon, 13 Feb 2023 00:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676249045;
	bh=AtuTYgHyQE/adIqeUnSQTzPKqR340gIFAI7wCcW39kM=;
	h=To:Subject:From:Date:From;
	b=SwrovuQjPys38M+owBSmEzJvU2wtdleFJZnezAPKPIe+coFBFK3wQi904Ji1gkfwm
	 qgL6sDTBgAIb1/caOTp/vnPCNjSfUGAFrtp9X3ZUBu9b6cdwBSz1CeLpwGfQTIoLZn
	 KdmjdyWIwLMHkhr7xWkS+5kQ4S0CXyip1jfDVaYcSIpWofKM3962RZU2L3OchLo0wh
	 Q09SG5hZwyg9bI1xIm71r3sdHUq94WoEBkJOEtEf5H1zdr4cESQDNiRDxEjjKiAXrf
	 Eb7wZVVyfdnVoCHtYSGQM0vhrtm7COpRlN1yI6D78MgNi7iIE5bx5cWl6O4ECW5xno
	 CZ/E5+CNLQ6aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8003C05027
	for <ddprobe@lists.linux.dev>; Mon, 13 Feb 2023 00:44:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167624904574.21580.9140321923512234221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac2751ef071c6d5f299fe9dc58d723072ef145cff92287e145ce1a24073802d4
Date: Mon, 13 Feb 2023 00:44:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676249045

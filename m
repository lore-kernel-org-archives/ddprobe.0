Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84D7DEA1
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 03:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD90DC433C0
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 03:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687836188;
	bh=q4NfYCgrRZdn0aT+QJnrJf76ZchL2k01JI1TKAtog6I=;
	h=To:Subject:From:Date:From;
	b=BsZazJBJJ0v2XxivLqTQzzrlhkNOJ6qQaNmGeJQxCJqHMS+afmznb0oxwcqlxcbsg
	 Z66WQGH50+ryquriZzBckXpEQIlmMrp0quS2RFghR19yeiga/WSsvkLjH3+Es3WI5M
	 mURdf1NSQpNwpe4HyHIbhfWRVqWMl1NfaBpfGkAzxjBs9TODE6PUYsePaRMaM28S+J
	 TB6jpo1sjmTIj+VXxqtC/oK5QrTuFHYaZt3EZbULKtW9WZafmArSkN5DUc6C/srS5K
	 AJnOKDXgAP3qWhD9OEqpw4981pEHONutUiC4BRGwD0jFReK/uqvxokCwO5vBbAx+G0
	 WnW6GbHnJZcdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9CF1EB64DD
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 03:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168783618875.3037.17208317072775793779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96679448beaf78cd169b1639c2a87af1cb3b51ae1dd5e18588e004ac7365043a
Date: Tue, 27 Jun 2023 03:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687836188

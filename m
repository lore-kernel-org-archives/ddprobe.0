Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5106C1FA0
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 05:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E432FC433EF
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 05:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679378285;
	bh=qGJivGEoVj5TCPQDyAMco++QpfeB2haCQ6n+MdDstfc=;
	h=To:Subject:From:Date:From;
	b=AVmCLMxGDNI/E44vKuym7WJKqQu9GwqZ9n2seTQlFA1BPq+3OR7pyBGvzfR2ZdycG
	 cuxRvzSnyZtF4sn6VwCz4d1pjQcQOIaidKIn9IbsYKCTc3wMVabd1ubjyFoGQ6eGVT
	 uxQ8svOm7iYdW/tgEQkq1XrFUiUaeA9InyiJMiaX6/SolsxHVb1vk5A04VmsuViDyk
	 KG2y5t4jpqHmfcnTlP1J6WmOr1Es6v05vKDaMLeo7s4K6+DjxSzbTBDyOC1oznc7sb
	 Be3OjW8IW98wN4B2a5sZhtRwkKmc8K2VCtSl8dQUqczFBgS67QtOVnXbiLwk+3jHiR
	 dEYvFuLhSDynQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C14C4C74A5B
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 05:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167937828576.15045.3827394820795695935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a9bbb411f4f1bf5c04ef39e8496093b64508b5a370e4820eb777a8c8ccb2d87
Date: Tue, 21 Mar 2023 05:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679378285

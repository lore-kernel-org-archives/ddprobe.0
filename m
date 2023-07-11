Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 702BE1DDE5
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 23:07:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD043C433C7
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 23:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689116828;
	bh=ifgag7jqxXqlXgZKn19114joFLxq5m8h13Gjcq121U4=;
	h=To:Subject:From:Date:From;
	b=RsMqq301JllwK568BD83S50bqYMzSBav8Wn8m3s1PCiakbUC3xByOb9Bsy4vmorxU
	 97QULLkVGMozG1V2jNMhiOR7LKwDjJNwhkNxYS1KQG2CyNUCwZQvFeqycbY7eUpl0y
	 iasSR6AuLdm/i5j/UkYvggCk+BPPU1JwcAZ/EiGouV6zTIEttkBF0f0aABgWjSrq1J
	 PhpPRQWEuwcTXdLCYZLJLOlCP/zvaYYfIWY3ctEDH+axMNalROjN7ZSRrCebrYpg2y
	 O+T/c5WdcXLTkEAtGcU8tBXsz8vrhI2qp2iCOM4KUL/8bQ62VSQxx6HF6log5/sPFT
	 ynxEHFwcuMrZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE769EB64DC
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 23:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168911682868.16800.17175940570023333752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fc725a932756d05624a20adc36982ca84f8b6ed7e0c2b4c67f207ff306cfb67
Date: Tue, 11 Jul 2023 23:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689116828

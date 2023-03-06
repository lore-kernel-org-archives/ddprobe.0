Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 443D453A6
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 23:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDF87C433EF
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 23:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678144745;
	bh=GzylOO8xEe5xvotl0Voh4pNGMUrLkyica+/zAzST5FQ=;
	h=To:Subject:From:Date:From;
	b=Ws3le/xkap+lAWEhuYjDZwiKHmfzNONtuOctJ6YuE06fdkeS4T2kgWPiCsZrc0TWy
	 AwHaRGbM+2oK1Y0ap4o2b/C+qs+PwdoM9727Yi6pjtdzUWxoM8LVvxXpXiXlM1Jc2g
	 56IESlE2EBDfXyesWGFk4rz7BRymAWeh6SBlyotz0JlmE16CVEAjCduENY3Id4ChKp
	 ZgnxDszKDbfZ1/jAd1/OIZorp2rysYX7hGos1XSYCn6BfHTrmfX4nXjpHm5U1/HE2b
	 8OV25/2JCUVyDv64mQC6Ptw+p69Ogu3F1IKIWjDHamXW3H0P+diLsNEDUCn3lxARz+
	 txvmRzqTXdVuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE02EC64EC4
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 23:19:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167814474576.16669.10702185278694751957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69f356eac51d2d2d1c15b643c0f8fb9219267b6c49b882ee3cbddb1a3697f00a
Date: Mon, 06 Mar 2023 23:19:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678144745

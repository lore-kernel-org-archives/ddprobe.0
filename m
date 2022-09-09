Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8BE7622
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 01:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CD57C433D7
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 01:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662685253;
	bh=5lVT/cRCG3YaUh7oAKTxEonBFPCG4CYs9Nq0g6/HOKU=;
	h=To:Subject:From:Date:From;
	b=bMKln1Mmxn9YKV+Mn6EBkIlxwJa6EhZRyQ4fJ95TNXBIg6Zi8KVk0Bysx+TtGTC9V
	 ix8OPynPI5NnVokbm28sbrkulrZh1gGhuzZFxVQ6K6DdYG5d56MZ3PVJV0G11Dqp0w
	 yuKeB0sFFXoQWIHJHcM5yswMj7SVHUSDN18S35wBvUtDW7UdROpGf/MOjaLdFWvm8S
	 rHxvtmEWguENbudu0a8f1iw2m5PahxleN5AMTbQRBcMOZUSramxp92Yp8xWxbctKzv
	 coNvtNOHPnipUQhAHSoB8ZaxA1fkVFrr5sddscGHC+CvZbsjZZWGNuP0aozETR+9QM
	 e5wp01qqoZSRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 573A1ECAAD5
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 01:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166268525333.12893.13904823514311009590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31678f6f5f3d8f19d155f915eac70d4bb7a08e06eef5c7d46d2f867b103b52e3
Date: Fri, 09 Sep 2022 01:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662685253

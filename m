Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AD2E3212
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 22:44:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3505C433C7
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 22:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693867448;
	bh=DE41a9RuH8SCcj+tKGk3ZwRu3wn0hEKscU5RDcV9Tb0=;
	h=To:Subject:From:Date:From;
	b=qDNqHRtEfagfKaQwxYYAEhPZAvLoQEirIraNgVZPXGP/pzoltJC9Dr1lRVuQw8Uyq
	 a6Xf0+ACrIzXWtkfBybjJR2kolcgDf95Zl7MS2GLif9XONhUjwt/VhiIsMnmRxncTx
	 Y0Y93EKIqMoe1GhcBj07jkQbttAGvsMQdGeUIJJH+BioqmnS2vYNL9EzWlMHpOSG6c
	 B35yAOq8hLhQrpnR6+RvMvCa6V4m2GCXLddKEQUHuMlIgpiY/0Yph3e/QBWUuPN/T+
	 vfeDSzoQX1D2X3Sp1ECgaIfaGTde3rczNHyiWAlIGHxLCbh1tAiAGngbpZrrKKpQo1
	 zLV2HKzZqxktQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A932FC83F2C
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 22:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169386744865.26913.14141361839802034497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11ea85a94f30a71c8d2df080d7360ef688bd50feb2794f47fa715a7fa62eed1d
Date: Mon, 04 Sep 2023 22:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693867448

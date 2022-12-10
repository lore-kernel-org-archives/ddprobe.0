Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DB65A5F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 03:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88CE5C433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 03:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670642487;
	bh=LJk21TRGsZY3mg9uFbD+b2QDRJLGDb3caBL7U2yLGvU=;
	h=To:Subject:From:Date:From;
	b=QM5G0ONk8gvJbfQ0is8MptuX4cvcpo81PTXjOn0Dc4Je5S9W6xft5+nHL953bpCUG
	 sf5LUpGG8o781GiQcBgXgW2nRdTKEfWtGCuFj2RnHK5Xo+RD0mwYMvM144NKH2oCa0
	 po+S9b1C6NQ09liPVe17Xm0m504k0wdXKqqWQCmg+VZR2gimYyoCB98LUE6k8NUlMd
	 WixAITqy2RKF0KkrcojU2M6TNnB1reipc9kX2AwMqEATYmXL29XNiQ9nedBYZzGRzu
	 A2aSMUomiRa5b0TikVG+wCNK2J5vbdffvYpbCCWc38GPqxuS/4IGnZlmvD1Qtw2pqj
	 WedrB+4Q3bggw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A67FC4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 03:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167064248742.14610.6997739783462378960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 485296f1bf17210f9e318099db31ef78e4688e04288e57ed7b6827410bfcfc8b
Date: Sat, 10 Dec 2022 03:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670642487

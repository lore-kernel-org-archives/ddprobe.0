Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97B1A1D307
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 17:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0465C433C7
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 17:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691602389;
	bh=0DcWaaUY/cW4KLBrCea26fdrUJvWaQOMeCB20UhtP6U=;
	h=To:Subject:From:Date:From;
	b=qH+4+VRam/aVfzuLm3RcvDfsD5L6f4HWRNJ8u2LC05cs84yvuV0fgpSEdrggPRrfV
	 AXmgLE0AYqDMle0gwCB3740YjdtBbKMR9oHZzbg8LvBcCZbtxKsbyKaK/ANh0mlfxT
	 dDUo0SUu8rpRzir8Jhleq8Yyy5GNahnXIg5yJd4GZVM9a9gH8xH51LzfhSK6m6LgsS
	 0lRpetkIgfkWTwtSOiFNwwToL+Oepo7wkT/5Ntneepj9I4EZhNPCtHlg99i8AsSwf2
	 gEh28k4imi7pdSHS93ftIqf6tKiu0k8KPjJCCx7MX9t3VV51uFtETDnDG7EdB50Ils
	 Y1DS+v6vuhzsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF743C001B0
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 17:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169160238871.5807.14723339220455543247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cb314323b44b697738040d5606c49ec7989ec0ce2c4c1d15390bde572434a14
Date: Wed, 09 Aug 2023 17:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691602388

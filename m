Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B98D63D2
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 20:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF647C4339B
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 20:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679169726;
	bh=HkSdFMT9e5QDnDJrlnlmDiF4ANWOnEOdXOf3s1BlsG0=;
	h=To:Subject:From:Date:From;
	b=sIxApk/dCSbynbdsGpmyK+C+vaN+U4KwXy8pOTSx/JoW79y5w/5sJrfdYl9KrJfUz
	 WRUi1IciDetH4f8LJij2v8G7hXxU0EmttabxinTytXY4vC567wuHQ4oiBQRoV+2Do6
	 P8pbEq5DHKSMQQmVz7ZKxwq3kxX6WUtp+C8yCfSDvJfGaFAv2X2suDudtzQBSO3Qfp
	 oZbi8A6ohdME3/EF9eaEpN/BblDrdYH6skxWxpap5pi2iH/YiOVkaqu4qB9IHafZVG
	 T11lbrRU94ajEZygTG9pCCu9RNhTek6XZ7qwN8gdWxlar5vHNwH8eSuZxXs6n/FURA
	 yYL4+pgRU0dkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D01E2C74A5B
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 20:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167916972582.27656.16472056835650412332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4006c50038f1d6d81323ad5b8d0addb7198950906bb5b1a59c9437425992e591
Date: Sat, 18 Mar 2023 20:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679169725

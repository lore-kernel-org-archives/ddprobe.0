Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 746FB394
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 03:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2B57C433EF
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 03:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686020526;
	bh=NnBg4M0KkdiHa59kBXxvMxAGr1r8qHZF8JFyOvCDhZQ=;
	h=To:Subject:From:Date:From;
	b=kBzSq6NOrNmuMmvgn02Fail+rM3/avp/bAOvthpqOfhHhP6Hll5L31xUNwEyg8d4X
	 8mowUB7b76VU/z+rZx3g6PCRBKSjwm6PW860t2nkAeRaK8x1AVdaivdHiNm6mFRCKq
	 A83ldUFW6xmR03UBOX01JFkFmBQHJFVn2LZBZZY4qplXIoVmGwlXkREjp3wMQu5Eis
	 SO+bR3MCpRn8N/DDU8SYiYmBQcqeUDXTieoigXbbiQpxHpqBXch6hOkifd+Z8kFqL5
	 TRM2N2XUzdrC6sVgPsPTGAGDLjgZgGeKyRvEOLUGZN4HseWlAmW91PhFqJBLs9Piap
	 NW5oBWMgmP7vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0898C7EE24
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 03:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168602052584.1177.16433633720580122704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c74c0884d367d9a6e88c0225c3eb0fc53ee46010d6eecff07870bdc1fa4b6cb
Date: Tue, 06 Jun 2023 03:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686020525

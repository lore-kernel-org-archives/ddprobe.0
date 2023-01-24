Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ED4E8BEC
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 16:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7260C433EF
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 16:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674579185;
	bh=bHHh87ivAO+KQxQizsxEkAawFMuqfarPgVvjc9R3G7s=;
	h=To:Subject:From:Date:From;
	b=EzGt58t2j42AQ59k3iE/42yDrRmESN4rRf3XavNlLnBWjNRk91PRbNw0WB7mLBU1m
	 ZJHwn/TAUJiRCNAqHsHGRG7F4r1gN2s4W2tj25T+xiKOCCYkZbU0AQ7iCNAJm8nt2e
	 EwDNCKWRph7kNU7okMfIIFt6yqZOtpDgaCN8U4ARNhSc/i0xJtI/uMwtJRIVP+2ept
	 CwJ9Hb3VYYYsdYu7miOHcF3k0CYsklIl8rGgjHTn1RjXLZFZnLJ5+53fQmqR4hiGFM
	 NlXOlgzCnvecvviLJZKx2dHw2aiGLhVd5TdrHC7yDCfjokbL+uqRqQ3E1B4Ur4M5Wf
	 sO0e+Up+BV9Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8FFEC25B4E
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 16:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167457918581.25469.5625661983966508260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 391554373c40fb481ab453e25e84e95c08683fe83f793f7ea73193b98ee31cc8
Date: Tue, 24 Jan 2023 16:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674579185

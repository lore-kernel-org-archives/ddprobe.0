Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 408B618C18
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 19:10:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2061C433D2
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 19:10:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684177806;
	bh=qz0uAnH5xM+PZgwWMdKvo9oKlzgWN4Lj3NbhEmf2MsM=;
	h=To:Subject:From:Date:From;
	b=gOZ95XKOoZaS6hmKimp1fVziyepC0SQgqVnBivyaEdV5kbE6iBjQ+7eSb/8OnlSG3
	 /NfwN9A9Fk18TMJVx189jtpJlkwrtH9GZzSct6J9kz+fcVKHXnTHQki57gThzTQXGj
	 tnxjN7kBEjm6kJqKrMuwvgwx/YLyMEIsx+8k4qMOBY61JqKFTUQjbi9UXiJA74DkqU
	 ISHLeHBLLmVCM8A23idzBCKOkOhfrVeJF/YU5RpmGB2vWdqKhbN259g67r6o/wDZyZ
	 ylOqyZ6lOr4vMYaibfHclARhbJlmJjvWVmwZ+OmCbM+DhPLb2SeEacuFE2OLSRe6bg
	 6lm+5OJ63S7+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDAB6C7EE24
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 19:10:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168417780582.1595.2330004662274957817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bacf12e27bf8aba47d2608c90596b7ca2c29badfeacb3694f3b8589d4406d4c7
Date: Mon, 15 May 2023 19:10:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684177805

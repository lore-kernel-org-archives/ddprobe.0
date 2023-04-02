Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53FF9524D
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 16:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBD00C433EF
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 16:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680452106;
	bh=kJwk92tvoPmb8cY+t4gMslMSOGQc4Jhoe+HU5s7U3NM=;
	h=To:Subject:From:Date:From;
	b=dDobqcHqdN18NLwNAa4gHCxWbwWKV8JcjlouNqwRrgr1CFgeAe/2KlBSZfLQNJfTL
	 0+i8/nKaDo1P6r7/okwAT7nDlZeKzFh9U9FwlepBrYcmn9/5oQBCswdquvwFqwydp8
	 QR2sK7m45imS7NkiAD1PkcsLGK4edghNC2fNB6vJOMJdPoByQorNIAyATy+9Pw3UT0
	 6WWe5OtLMsdOrOGH+YZZ/87O2eHbcT/S8bXjykicpaOJbXGfe0sl6FJGWzHRkbVuKI
	 SG6XevqI8qwmqUOaWW4lVdlFgihWicjU199mQSBCc97Mf7HuAdeFXnIK6aWzLHzzQ8
	 UYq8Oyjd+Dcqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1EF2C76196
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 16:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168045210576.22581.14899073195446027895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fc6738bded4b3b78d407549d56c81c7100d0e049dfdbf9fa35542e382b95af2
Date: Sun, 02 Apr 2023 16:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680452105

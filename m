Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 657C6107BE
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 13:46:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF8C5C433C7
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 13:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695822368;
	bh=fEE/rlvkmHu08lGjikwFbvBjvcBfGpAbLPFZ2gnheBQ=;
	h=To:Subject:From:Date:From;
	b=MwaXHcuPZWG29WI/1aSnLRqqVV0PsHzRCW5arYu78V7oA9KtSLI00bDZ4fS9HABra
	 qyztsdolvddYUwYq4dQqutBgN0aCq3UEvBZfE/4JOw+XZFjDjHZGFxun4F6bPBK01T
	 kY40cdlmOZZ0YjYhVJpSLHhfrajiE6h5zj/+RSv9e4c7Y+AmfnJUy+V996HyWb4fg1
	 TZc1cCfY66A+EEoSczE+BMejV5Pl0pqR3culzmGyGbShAjN/9YceqME/ltL57GYE7V
	 XUlrnCU1hKBMw0kzbMTymdzkKQb9Wan174/WvhmTFg9Vg5L57QQpCWVb5gIvCtM1oZ
	 ybb6rebPNEWAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3BBDE810DA
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 13:46:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169582236871.30770.7804472536565699561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94c70ebdfc96845f3cd066c101e86d522c4667d7ba29d5127c6b491b4118f5a1
Date: Wed, 27 Sep 2023 13:46:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695822368

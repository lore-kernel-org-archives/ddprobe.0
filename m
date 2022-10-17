Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA21010F7
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 09:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DCD2C43141
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 09:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665997253;
	bh=azu8Sbwr66/zCggfGl4kjHa28Otw4K2aTsTrTm98BEk=;
	h=To:Subject:From:Date:From;
	b=B0sFa7O/2474jEKg1heNNcNnXs6+qhGYNTw2ISK1L5RPpMDH9Usllxa+FBsPtEf2f
	 uvG36/b+/iu2jQfXZZh3zghprHU8m0xzp2FLYx5fkK3sI/JY9dAqUxuokq547hGW2e
	 1EumVQXqLZbTcKtdMCP2YpGOv3to8o6ud+Md9FXp19EMdkvecmntSfQyD6g746jwIL
	 sVhndOw9zp9NTsbanWwWYqwTmemTSBEXZpefi8s3BWGkBGf+WyqT+kZBPe+MBdRITG
	 18Xhvm9CI7grayAV3m0Ow/893l99leGZ7bKLS4+sjeJAjqjbCt4/j0FuLlA5ItN5J+
	 jlJwPSTvFmczw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 563E5C4332F
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 09:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166599725334.21442.15948070095312295119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 063298bc096750b31ec13b1adb5cb926e972485a382a399b80d463630767243f
Date: Mon, 17 Oct 2022 09:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665997253

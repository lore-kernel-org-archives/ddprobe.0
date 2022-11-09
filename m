Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE54A194
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 20:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72397C433C1
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 20:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668026454;
	bh=0XJM8ofYD7rMuyG0lEOPX/5xrcLoJ9HLk9Wsmzv7j5w=;
	h=To:Subject:From:Date:From;
	b=OZZnZK2keom23B4XsBxjbOifFEipe+tc4zWtf2kfHy82TJsQIZgpTb9JuBGcZTqXY
	 vyl8x9j8w3q0+DG9rkFnG/eD2tpP3h+b3pDm9AQjqOZKmy7TWvy/F7nam/NYAnQfJ7
	 tVURu2BasZ+2cbInyUxnsqHrKpfXrZgNYLYnYTD3d56MTwLXykeWPoCWe0iJrHYdKe
	 9eJ9B4ou2qpRUxvG1XZVB/e141/c/lXwuz1mmznu2iFBfv6CTV6bIUjdeQvov9Q2Ii
	 1sWqqoqF91d3Z7D+BC5cAfpehl9xLci4aiY+/ckLBUHYLXkpQw7OeyKC1wwikcJblN
	 2M+UEtgE9tX9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59B23C433FE
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 20:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166802645435.11896.9847956989517368353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b5187f65abcdfe664748a15bea6a016e3f090e738501187c9c7f646b2719eb6
Date: Wed, 09 Nov 2022 20:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668026454

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FEC0D51B
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 18:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7145CC433D6
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 18:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668621654;
	bh=u8BZUw5JmEXKaE/8biAeCSMdz8GOo5MrI/3A/UMKrbQ=;
	h=To:Subject:From:Date:From;
	b=PXAQ13LRrE/k00YWpmu6/Hn1C02qajD6XpIPXVOlhg5v6ZMtVWO6S1rjagNprRN5B
	 5XTErLyS6sLUtW0IaWlP0A7xFZHkRkgr64HOGyIzoIHAFky8OhB0G+kOgT5prwjxxj
	 LKCFhvPznLTfYZKlLueKKolRQ8aa1e7gdfLGK4200pxW6oJn2Dp2ZdfYOKpZy48THq
	 JSZBEWdVxnXcwORYEPL1Kq/tXkF9SWEFunJedL9svJ3EpTZsatsLD0FtwlDZMsEsr7
	 prLjesnho6gQeZbqq24clwgoH1mVZfGtr/4TwkeHxovYTxs7Ip0Uf2rxOJPKewyPdO
	 Q0cWdWrZd8DMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 594E9C433FE
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 18:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166862165435.9772.4913805574828115589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dce32a6a63eba027dc5dd245c63d1b11a53da7b53dea1cec62a6c69e7bc500a
Date: Wed, 16 Nov 2022 18:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668621654

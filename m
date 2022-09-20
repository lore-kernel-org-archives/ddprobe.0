Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8455187D
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 11:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A6F8C433D6
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 11:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663674053;
	bh=PO17eHT4lNB60baGsXxZGza7qivD7oP6uU/WPZMf+WI=;
	h=To:Subject:From:Date:From;
	b=LJwHxrSBmk6cRhuDy/OSmAp3x8rmvooj5P5Uz35YxHHSEu6wEc56AUb6v3y3PnEKU
	 qdvl8anBx+MIaheT4DC0douXSK5/M5N51XDN+Ifca1F+G/raIyxiwxe/FmBgVx4V2m
	 pVfcznS3Akvv5UQZWpbTelmQcWu/DzDQlIdHeLn8MLWvTtCZPUkZoMrm9sVN47YCp9
	 HrLoMSq9mgA8Qwp63szogd6sB3cfzRMBszviRT+5z6BE5ZqqssO4vkOPRjNfGLJ1XK
	 RhaIPGBUHnu6Cbh9IvSvvslrdOc0g/9ewdP15Sn9xZzgQDgf4Sj4swzK0KxgiCnbfx
	 uq4cqEOJDAdRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5716AECAAD8
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 11:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166367405334.6057.9298663773024432418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17ab2a78df7b043e778d3f75c02bf529efe68e167392704132d521331fd407b7
Date: Tue, 20 Sep 2022 11:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663674053

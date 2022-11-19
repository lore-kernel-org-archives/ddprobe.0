Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C99532F4A
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 19:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 789E7C433D6
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 19:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668884454;
	bh=OaWZ7mO7GU5IQtnGP7rDVwb5Kr4or4nQCu3Eewz/3oA=;
	h=To:Subject:From:Date:From;
	b=BLWXxDr9abERPyEeIViZyec0B930K/rVUNCmH9Rne/st/xGtRmeu+DArM8ZMcs20M
	 7w/BC03XKFauu7I6LFEBo4rHgv3FVv6QwKvXRfstSL3iI/bdO4WLrxqI/ryiK3M1yu
	 Ecit7KMTXNi7M2OdPLPywASNo9KAPHjm43DyKmQ66ZZn04PE5TW4pywepsZGoF1ipj
	 CdBpK6hp0OI5KU9Tu5wwKJhoNkg2cqvWQyNnRUbJUOg7koxbwacOoEfOd+CxqTRFZq
	 FqOnOacBkNIcKnQHl1P6tWrxv+YGmGC5CgjXpK7JOtyDaWY7ZoGAepoL/XLl+NA9To
	 zkWEZw6a/aYVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D60EC433FE
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 19:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166888445436.23368.8425021338404371472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e08fc09abcd7d72bedb824efd31d2e6a4a8e49d100a6eb4fafa4b12b33fa8a4
Date: Sat, 19 Nov 2022 19:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668884454

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD67B539F
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 11:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E4BBC433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 11:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662550853;
	bh=9lOh42n07roqItiXXs0CjZqTVEwLy7VvwK9HGKGuHeQ=;
	h=To:Subject:From:Date:From;
	b=Pp/KJcrSWNEjxqm0Y+VzqVedIH/A35/qwJ9fBehZgx6REBTv+hKUE7CX+dDMWywfG
	 3psl7bq6G9AFiIsM08e8M6Ds2i2kwjIcjr6UqPa8awGVHiP5zCS1dZ4KQn8Zu/didW
	 e9A0YPJSYrL48UVrvA043kYq4sDuRM3PC7dc3L4v+dIKz+Ysh5qepSqous5qVB/SyV
	 10WjHFTJN5ls2FOM2SeXWHe1aWYAuVLfAZts0Rl9Y5eIWL39ncUPM8ZjSqyorwG/Xe
	 X4/SsLymzaW20CiVNZZsm5qAhqL/qimsWLwER5hI1xH6VUCbXhsdeP9LL0bTjyC8Pe
	 wJYJGNjeE6ZEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 549C1C38145
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 11:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166255085333.22364.9252937114569753312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42001a56a708d6178888f2089c096a933da502d06f9a025931f5738a4c49f80f
Date: Wed, 07 Sep 2022 11:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662550853

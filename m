Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 187FA33C1
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 22:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB29C433D2
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 22:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671660087;
	bh=Wcjha9E0Mo3FtQRFeH4ZA4SHvljkoPTVaooUF3/skHY=;
	h=To:Subject:From:Date:From;
	b=mMW2MB1kKvapUi68+dUETBVXo4L/+vphpU2OmUwzj54o5NSXN2ch0AUkuIjojn2rW
	 vGO6RIzdBjyLQeQqjp1Zg4I/IwTlRZesBbYq8ocZVxvd0QW4AqJ6hkLlBsTf1A4HUQ
	 3o6VOD/lFhnqFqJVN6Y4haF9eZ4D6/dhBN/38hWo55QmCQOB7qMX/te2zIO2BvpVu4
	 Fz+vP/e5vUpph/quf/FAEtc07EFUP4JCr9YkxfUsNyA0jdBOqmLJwscKtj6qhALuJZ
	 d3u9Izmm5P3BnP4ZKzRMkwAOGz9fCkEe/TkWWfZDUDc4UhwxioVyAjHVYbp16sJxOc
	 VM0kujf6wA5mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8C8F7C4167B
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 22:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167166008754.17011.8209931011379385644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9d9f615b48f7463ee0bf48991ece6618ee51fa7ed2573992eec87256d1f4bba
Date: Wed, 21 Dec 2022 22:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671660087

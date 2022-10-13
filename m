Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8EA92C9C
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 13:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D022C433D6
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 13:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665666653;
	bh=+si9LavMkY3lLKXuIacciRV94oA9aU5J+JHUWaGGvkE=;
	h=To:Subject:From:Date:From;
	b=tK6jn0MT2OoyDR/5RW2I9aVUpWlMi5/MJJXJ58+94LmTS6AuN24jcDRTYNJ2pXddl
	 M/Ac0Tnpgl+bc9gDssQiq9TLlc8/89pTlH8bX+BdrtRAjR7EEgycksfMg+VYcdwDDr
	 kTgJ7IQ9uFXb90kAgq0wdpLXTbvPRAxOmWSOPHjGFp42lIOpK971JSG1v/OQsgIVYb
	 IFbOInQcZn+eyMnKT5Az90PM/pa9LrrXXjVVcPSmrFHKszfxnefmPQle9I5Jemb5mT
	 wbN8HriFOvlErWnodoXdeD5SAU/W+uWd/2zVlaYNWbpliv836OMH9LkH71Peq5g3iM
	 mLilxBiqk7OFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F754C4332F
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 13:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166566665331.24381.13774424586399067869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e97da8c927a5ed33b0a9974080540c7e444325d5e0ddadb692657034abbd8d47
Date: Thu, 13 Oct 2022 13:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665666653

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64435440E
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 18:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCCFAC433C8
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 18:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691173388;
	bh=CdyqdMOG0LcvfZjaAeN+QutH7i3BbsJ2hcQ4Tli0HbE=;
	h=To:Subject:From:Date:From;
	b=TfeAbFBWPlnNO23iPhs0u3AYx51j9rrds22ZRPSstsDj7FBhBC4Lg7TcvnlO2f7lE
	 ecv6LiQy6SjTh3h2fh06g8ha14wpvItmIlEIBxdZ+2g8AEpQjb8GJMZh9dGFRigoFM
	 ehFhnTUKJ2qtlrnuWyXWqrmT5JY0yf9iSnDv+8M494gvzKUmo6Tq3ApZtQu0Cml7Z2
	 8+aT4qptvR46uthMcc4udUHDTJZHHOGCd70Aos2d6S0pjzb8ZISxj8K/d2rEaNAvO/
	 ghz/7LouP2rJDKUq3onyoUZ+Knb3OEozr6JPYr2eX/DCOwlHcRMOcwKtL/5vKid4oA
	 2vNCcr5GG2UIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3FFDC04A6A
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 18:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169117338866.29279.14345098325522335484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9ef143cdf52c50b4a84fb2ca613f795b39bf9ac167cdc0c0a1fbdd5639abd38
Date: Fri, 04 Aug 2023 18:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691173388

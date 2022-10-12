Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA46817CD
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 12:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D102C433D6
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 12:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665576653;
	bh=CpH0jkKYsQL6oi5f0jponvl2zlL+oW9uwter81XG7zE=;
	h=To:Subject:From:Date:From;
	b=jZSVdlu159EJ/BYX2aWX+w5lSzUgk+wIFdvtUF3qgjG9NNTHSuY17zy3Rb0NAgNuR
	 hDPxbHrrgewNTkEh9buBAPWB4tVWmYZKRF9MPZcE35mWRCRFRm8SANfTIO/b0mF22w
	 BJ6TqDUW480NpJbYCeCFUfywRNORyg2gz8FHbR4pi07o3pWCDrz2h/isNmhLg7FY6Z
	 jUuZqeJOsGxUtUSWUzuZ2QW9jNXvzacOF7XC3ug/arHYBxT8WIqi75k6Bia5hUESf4
	 V/yXnk9EMEW+yuJeTtjhXsLCMEdA7cjVCQzUHn1NQlIaTqDTv7UZIfRRkbppBt0M0v
	 fwJBmLI0o9Xbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D9A1C433FE
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 12:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166557665337.23726.12080391523589676435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afc6f0c12b9cec42dd74c3f05bf1d7d53202a39c0971869c82c3f613a971af2e
Date: Wed, 12 Oct 2022 12:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665576653

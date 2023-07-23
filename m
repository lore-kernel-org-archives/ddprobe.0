Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9D68A29
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 05:22:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3EE0C433C7
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 05:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690089728;
	bh=m4iWjAmY4kvY9oMDWN0qlsKG2T4Ddn4UCtUvIHTKI6s=;
	h=To:Subject:From:Date:From;
	b=VpUWHOjSo13x0Jqd2A4C1+4hEBz4QTZ8YGelXVS/M8VkIQRn5iHeUglNVY8Q9q2hz
	 vmJKfSXbfCzIkOYM7DbPhUYPRgt7J9Ka+kvcqA3GPYUKBHjJWXz+VzoW+Bhei+ODN9
	 qdlheDoyJGVRgi6uZaBtE/piEZlt4wf3hHeazu04CyUgcbKoUmrPdsqwKZzoPm1QhA
	 TGk01osM8Wh88y8zuWTZepVGuuhOnDbJrjx4z0+Bcmy6jZ5bna/58r4n1pT+lM/S4P
	 gyF00l/FPkXOPojYmMLKWYVh82GKZBONr52SHoPQJtcCSHim4jI01ygcJCN2JcIEwI
	 m6pBHx9C/CDeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF061C001DE
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 05:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169008972873.22813.8908789289889694793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6f1a8200334a3784f6e0aa002a51b74c58c044fb159ee1238e6046c89da686b
Date: Sun, 23 Jul 2023 05:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690089728

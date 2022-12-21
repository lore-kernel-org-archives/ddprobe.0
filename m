Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1A013C02
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 22:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77D91C433EF
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 22:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671661887;
	bh=nXXsvm2O+yh6jwW/IqEarz9G1+5970Fy4FIfwTgQBN8=;
	h=To:Subject:From:Date:From;
	b=Fchh7fbnoIWyQltHHnCHeKxOjJyf6VaP+llTtkY0+eXcmuQriuAnPMwXW8LqZblZ3
	 WZ09p8CKqMRf4VF2TyimgVizqshEHO+07psdDhPJl6MT6SPKhZJBFNmdden8yt/Hi2
	 MIJUZEe6sYgJ6vbH8KoJKnTEMVO0acAKaAfxSxAv24jkNg3cwjFwFmep5PKR9NoYz2
	 ewNtNSQUn7pJ4pWdiWzwFkhRNyudFIDwAM93l2VAutIVLDlS+hNxDThto3qw/ZUaHn
	 KoZDT1TIW3s2/zwLesLSGHY9D6tL2RMiW+PMqG0VoyTZHcKawfQogZPFLb30bJkL9J
	 6NDSsmlPzU+9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60FF1C4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 22:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167166188739.647.1099718225239784423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ebe356d2f74c5d853029235bf3516681ebe31919e8903b67d7735c586926483
Date: Wed, 21 Dec 2022 22:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671661887

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D49917B
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 12:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C757C433C1
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 12:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661431252;
	bh=9ZeLSXKGWeKDfAoDNhWAxr5M5W5s2P1+lR5OhYnMa90=;
	h=To:Subject:From:Date:From;
	b=Xdjn99i6yQ1xOXr/uRkIncYZtWq/RkCb78Fm7IoC8yfMFr/QBkTcEFzly/3KERzM0
	 A8qDmI9RecuOUUtAwdYAEMY2P8W0/KOGBkCrpRtV9jbCWMOUIUQ5AN3vRHlB2Cgjrz
	 bJE0T/5g7LdFVueuqmNqaFIEOb1WOKEGXmYQe7jGShiJAH/Nq8wCce5h+8ylQ20/4x
	 x07hz1tk1/RtdhRv1z2MVy8lCN1c9TNb2eo1E0nZGi2+utK7VwRBpK+6JbdXdjbZsW
	 rldQwQE7FwJMhlq+aWNBdRUK/Dwf0VKSuItOr2IZwt9QUohZ7vgngOJQcrjjAXUigu
	 LBncilJ7vgsCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DC35C28D13
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 12:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166143125237.26992.6379098359861946818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 398ca36797ef47d0a4b02a053865b8c236a8a86f0e12063a406f0208e41ee92a
Date: Thu, 25 Aug 2022 12:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661431252

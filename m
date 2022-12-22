Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E30127491
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 19:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89655C433EF
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 19:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671738687;
	bh=5wbN2LxMd6bNk5ELKSBZMx0RihCC9JU43G5zir92Ajo=;
	h=To:Subject:From:Date:From;
	b=Vj8jvci4lEpE4w5iATpkPGIwRzBeCYpgL2gIAmuvKzo5dSUQY54MSppd3RGiPHkBV
	 lTuXyBNKIeT1EfUQfBz9invXDJK1FB3SKWpjDqqsV2n+/9AlXZCMn7I6Vk61/9GJ+/
	 oa8w4bfDLpcdavl9Db/QPUOC2CaJ1LnC7vejxTREd9e5wVy/o0OzRKvMc6yFP6Hcd9
	 mCQNlt2vedOlGUsuIpAZAacflUuRHNOq8S3rgCQidBF4qzUzIUYA26wOpynXUjhszS
	 AS8L8UpOva3Vft7n20Wc+tZGu7GDN1XS4Sr3Sql/mqdaNXpSvIEyWPBd8UEUMHCHJm
	 OFbA7G8WAAfVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A4FCC4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 19:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167173868742.29214.7461317747259847356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc4a3429d6a9d63991303e5bed11aee02443c33bfe4607ed4a6767c21491f0b9
Date: Thu, 22 Dec 2022 19:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671738687

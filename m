Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCA4B654
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 07:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DD94C433D6
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 07:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665039653;
	bh=1Pru/e7uLmTUxqyuoCAt78X7Lsfa3aoZmTWWM7KEtbk=;
	h=To:Subject:From:Date:From;
	b=CXr5ry29oSchaMOHHFejKGVHQ56SR6CRCbXtFr9Lvx967+TxD6IhDt7L71v2lmVDt
	 0JM+eQNjwBoFRJbwxBxb2HHxiUFp18WQpCC/p6fphkrUNZgllZcy7BJyLV6X8TWlZG
	 XdDkPvuokLQFN+Ff3n8bgQC7KkvtBYZTgxp8XS9F6Tu9pumlA3GqrYegg+BKTWU8mF
	 tghDq+k7ffVSBH9nyMfJF5OgYhyO2MftASUSPveiyYoyVhhRszSXivIiScHzBsX46l
	 rCm4LY6AT2vDndIGm/r5KCrUqKYLpoADYQeDIH73Y+3oAE4WIzr8Jd0+DA6PRb7EOj
	 Vds+iTVZ3Owpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 530A0C433FE
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 07:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166503965333.24419.16650816085667539775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34f3836171dd055b0098309e5f2414a0697d5781bea7badc556e7281b47956fb
Date: Thu, 06 Oct 2022 07:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665039653

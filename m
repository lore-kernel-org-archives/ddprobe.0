Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32DE517C9
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 02:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0979C433EF
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 02:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681956305;
	bh=/frGIHsiA6rBtyWEQsTWjFJR4ATgabJ41yXqDD6TjXg=;
	h=To:Subject:From:Date:From;
	b=nxp+txva27pW793CAyCwDva3TGE8UyHPUKcg8TtaGtjRxv6MoQkQL3vfAGpJneG/v
	 cGZnG4UlqEYwdY41XLJfUIdgwgkG6R2s+9LB+KUUTYMSbicNJ0zrOaiqhdDglKTwxL
	 h6vgZITPlzwfnJIVayEE4cLS/LUfQs+n+La+4eDZjjRj1+RoZHelrLRLMz5NiXKMb2
	 O+u5d29kvrsXh9xVU+4YIO+vD4V8b59eQUZ/cT1Af9c8VQLf0z783w/OhpoBZ3wLXM
	 nhWTU4fFxMpn7Sa7oP0jLpQSXt4c1D7xInV0+9xMVX3tH7wErFFTNO5wntzvDrSjoV
	 nqgZl3sdI7jAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDEE5C77B73
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 02:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168195630576.5808.837666464102418348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a67fb3b7ff1cbd55b53909ed61feafbb9d98d7023d892e17f73a13fa4b0c0c9
Date: Thu, 20 Apr 2023 02:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681956305

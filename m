Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E51682F22
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 23:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D5C2C433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 23:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670370654;
	bh=M41QDchrQ+UUUY5PtqG60MPdtC9kV34BBeEeOKBoWg4=;
	h=To:Subject:From:Date:From;
	b=YjvkoUxMToStca5aRjz0etjDBpF4wbMYunA/ryZ7AGQ+gg+uGKdCe9rdvw5DOtn2+
	 P7ZkAL5ZgS9GJZ25CVirV90lIPoDavmBxICtYZKkDoMqDQFMutEVR1dCMJlvzfmuiE
	 L1GBiwtaUxZgvuGqW6i+r2hkmcFo7iidVSZWXU+oU7q5A2MfYfRP8Hxu5QBU5WFUqU
	 KdzKcOy9dk5zrdnBIe5aMzV3C7whU8CrnM5zHjsdS9y1fqP7lTfAS/0mKVHTHz1zvo
	 AayDJSzghl/CR7f6Pt/aZa+S7ViBEokdTvnkNHUuKPSCvDo6acglGwvP6r3F93bzwC
	 M1j8MrTH3aZWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F889C352A1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 23:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167037065438.19236.12813664867917521713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bffb6e0e109bd123a40d5efd3706da8e708627204752163d0db66471a4b5ea91
Date: Tue, 06 Dec 2022 23:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670370654

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43B6AF9E6
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 10:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD8DDC433C7
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 10:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692180788;
	bh=jOKB2Zzx4EJqvjSq4PqegHDNjGEEvIxHYAKi7A0Qu/s=;
	h=To:Subject:From:Date:From;
	b=AW6o6QyEBzXcVQIg7eQekslvMymJ2kKMIkloGYbXQkKYzk09I/vh9xxlbGfOZo0oJ
	 F5t99WilNZgi6EwbxS39giNA1NVifvUdJrZdqPFJ+araZqqzsMQElXOClTqlmMIls6
	 osStewiZ+rJvk3oIFJUzlQ/niXDWFtUhYOkhRwC4Nw35wsQ03KS8Yrc/BVM4ADvkL7
	 QEylbPCIYh8zAlZ7iMstP+RiL1+Jk6lMCZTMSaf7MpE7kqj5m4i8w3fE9ZtPMwTLQQ
	 LkkgRgbd8ZCzke8PuQucY08mDfQa/tkB1jbNZPog3Xr5qw7WjEkZ5xAJWfDAGL7kvt
	 ecMGClsOVRAxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4EBCC001E0
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 10:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169218078866.23344.7904605786588141605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b542309f6b3a3e9bb1f89b006396c71dcc7d7c24568758b203b02ddcd73b7fbb
Date: Wed, 16 Aug 2023 10:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692180788

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEB9F7C
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 06:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CBC4C433C1
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 06:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670221854;
	bh=ksgOxzbwBLpt2qiljNDNK0bjCORb4SZn95LfvmM0N0c=;
	h=To:Subject:From:Date:From;
	b=T/briv0vyqSsJRMc+AcaKjYZ0zYPQxfeCr38+uNjZOGOolGacEyN+AjwWmHYnenEn
	 ygyhkdB6ohdItOSw7Z2n9iGEhi1dlHdaoP7LkGRJ2K4MiNaOHjvsVmDwVE2+RGQaVQ
	 jr3j6v5ibbPfhHyQaqZFKi5vT9GlD9NBgvaxZK6huSW6EFA2M/JkUYNkqhSvKBud/3
	 UHZa738tcdu3CpHTfwvGMZ7A7CrojoxUWZ+G6vEjQNzIObcGxKTNj0G0JfITn6a8+0
	 SPoyylDLV8mBCQv4xeb3N8+gw68O70HOO82Er6RZJfC+KFixCSp86GkHSGKbOlekdl
	 R+hPNBrcEfy+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52812C4321E
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 06:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167022185431.1063.8585503624605846005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cbb7e3e0104dce58d3dac17f4f6d6ae71757c1153e5a89320f82d20cbc90b42
Date: Mon, 05 Dec 2022 06:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670221854

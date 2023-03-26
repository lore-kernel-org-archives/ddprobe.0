Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C48962F
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 04:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB358C433EF
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 04:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679804526;
	bh=6L5vA2tZPzcp5kPb5QWzJoYH55DcnH7RIjLa+QG5d20=;
	h=To:Subject:From:Date:From;
	b=jYOoZTjmZpmIhUyZdGQLG9x+2klba0zNNnGsvbnNiwM1BxmuHgz9yI2Zu5FYReP/v
	 yarVQsBE+DJbuDoR9Q0FzbO1jqiDBLrWYBSGwKZTIp3JbtxDckSGZY16rjxyz7xpVU
	 qj/TzAapChSWzfnkXwn/3CcvC8hoRNpjd1/1kkIauBIYzCC4whZCcgbc3/WrG9GReM
	 Da8oaVsyiyEXmvhUyiNZ0vSOhSNCIHYm4BjCIbqXBzRPHC9pzmWg1FkxIDCd+tML90
	 iDmtIPfuHgK8UvNRDWezUP/2AMv/zpJ/lVmJqos/ZnLhKOtanofHlMP+CSTS1HIjmR
	 QNmPtTpKyukbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD910C6FD1C
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 04:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167980452580.4652.2772535844537378144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca06de59fe336a06d829cfc22b4779ced0ed3b75f1ce13832849a22f111ff3bc
Date: Sun, 26 Mar 2023 04:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679804525

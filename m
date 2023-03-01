Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 468F41116
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 11:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED699C433EF
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 11:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677669966;
	bh=6+kduh2MFhPEf42Rs5oA8WXaBHwFVG6o5/Uo2dkLpQE=;
	h=To:Subject:From:Date:From;
	b=SjWjNmJUT3r8/N5Xs7xi8P3yiYufRQVpYUJiZGDVcbw8R6m4n98WX4VYhmyO9lRt6
	 wqt6BIKH8uynhNXCuZyvcKA45KBxW9XG1sZFT4aHulQrj0G5OFHKBuRwYt25beN6O+
	 7kLiCvr2lzn+19y+4uAXIvWrQO/JfijQ/4KevrVDF0YumWVdTfU8uN4V/RVKDL/TXr
	 A2Aq8/B9efG5vq9X0zVIgLWh7SHN5pHlTUu74hKDvRXrsdzOqQ6GW+7wV9w4ig78iN
	 pP+tHeTrBFHmfnQy8+R/k2mlSc5kOzbm+2BApoeL9sNR4Y+VOJt06YlhFZM9LX9WBF
	 qD4GFGnmAPhrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDA00C64ED6
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 11:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167766996583.6550.7163609613789273453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4d5eaadb82517f752aaee67d48177981dfad27319f4c982f87f03725d5b65c2
Date: Wed, 01 Mar 2023 11:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677669965

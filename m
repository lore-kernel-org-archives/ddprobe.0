Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3496A7B
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 01:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB93C433D2
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 01:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680054305;
	bh=5bDE+Rpj7hpy8s4CFRvwZzyIgxZHHzVN/JACikMlmmg=;
	h=To:Subject:From:Date:From;
	b=Vk8X538VWOg4Kwy1N8tqVz0ZAX/Pb+8xAvknkjFAdZrETddkrRnvhSG0WdTf4zmAS
	 BtAl08eL4v4z7YcEMvgUOIJ5SrYIDjVo9v35H0fd5WSzZpt3I5gwjLC+3xb6sjwhyH
	 cayoz/SFR+n1Gr0pLLiMpIXPFd5G2yzWbm/ZK7CB/5YXcp/22gwnwbddjQzw6Jj0W7
	 bGRVbze0b8F/px3vJ+dZWdmjsGHKR9wETq8GRepIzgpFzZAwP7GAEtFa5HvltIMtqd
	 pXSGq8n6HgIy++uWvyFIdIoP1S1FhUOXJW1cJpn/SuPGnaloBRyC8qS5LUzUwivkn6
	 LwUUnFBxb1M7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6F46C6FD18
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 01:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168005430574.17639.16048301357038286477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76e1df9fa652f66f65f5c4987a9c3c88eb4a6672ac74633c1feb83bbae0d3449
Date: Wed, 29 Mar 2023 01:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680054305

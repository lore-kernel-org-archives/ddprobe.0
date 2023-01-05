Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0481C10785
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 20:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CB0C433F0
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 20:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672950087;
	bh=nCdCnwO4PzFwTH5/HpsfFzqPPoSRE0p1p9+0ORYi3OQ=;
	h=To:Subject:From:Date:From;
	b=GMnjTiE7UqcfDUUnDZYPV77D/+Nl/fVRpq0VFdI4IqZafniEw7M7bRqo+5AUrYU1a
	 bxrOZ9m6cD6KJmW6SQwqnnQiLMKJBSuKvVsT7JfjEwluLFj/n/7tnh61GQt4gn8cfM
	 PxcKol4DeCDvQ2m4+s/TzVnG+099YjcXcTxoAUO+PPLK4SEX4sk6qPVnnjuwKx2jel
	 9X/o6p1ghjW6+rosZIhiazKg5GjpqKw0icFsWOuUJIV2r7olx/laZunCAv0xf0QH6b
	 v2BsxdgF48U5ttXp1E61KYevgbJNRpDpq483AzSi8aTfdaPYM/RZ1bvoo2R5nT/eTx
	 SXgpo3LaMQeYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8104CC3DA7A
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 20:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167295008751.10287.18342490225911757412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab7e7188461cbb6881c0d204a16566156ca47deda0753ebae239cd71d6355293
Date: Thu, 05 Jan 2023 20:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672950087

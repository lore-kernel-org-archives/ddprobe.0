Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5687F2CA9
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 22:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F11E9C433D2
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 22:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682548626;
	bh=8wNzp8rcLir4ucPRlr978A2N3MlgZr8DbQAZm/R5dbo=;
	h=To:Subject:From:Date:From;
	b=sAe48TLFkAYdq/PEDgBtZbVuId5F1icNr7Xfiz3gY5Y9u643rbkxBbQ1fo6H90Vw/
	 BjEBP/mNUBWYmrQuZeljZWMjNCxAAC81da1VCi79f71l3QaKJW70AaGmQ6XpwUF2iW
	 tQC9c+c21CyDTZ07at0Bl1kbG6rspL1vbUGj6kbj9tCS+ZEwEDQuYpyRCyhndpa9TM
	 REttn8Pgb3MDsFZtsoS21ASw7UVAKR12j99nES3JH9/Dil0rh74s/TYOc7S74dLxxq
	 wmG5iEz7a+AJ4Tfxhs4GcRS3pAnB2DQG54BEEMuwVE6YaxhjYimo4bQCBHqqtOvZE8
	 5uFeK8ua2i+Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C35C3C77B60
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 22:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168254862579.19315.5044175780768421922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35885c855bce9621e57360ced37a6cd778f3ea41234013b84479dac8b6d7988f
Date: Wed, 26 Apr 2023 22:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682548625

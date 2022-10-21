Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE49D7B
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 02:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 773DCC433D6
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 02:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666320053;
	bh=4/bmT7l7rCiDTqYjUK93nfHPW+hzeeDKsfTUvbPi24Q=;
	h=To:Subject:From:Date:From;
	b=D9kDuBGQVz6iFjV5udr/FaIz9F6tqOf05TL2TL6zMyCDLI9TJJcAGG84goPMapgQu
	 Rp2VZPMXVypoi3r5+lhISAQoBxvRZ9cU55MSki5SpEMrQyqhhpj/8xmDBa8WWreaaX
	 ZeJYATEoThIXljR+XcJvGe+4or1NrN9NMcN1rUqaQyL8/6CFXVoWoJBj77JqVXmHzh
	 HJ3i/xYf+Kb4uXDOHKP1H596c9ZiRHigtbiokXl2DiiZrH7gMffv+jNmbzSXkDO63w
	 DPpjycRwoCRsa1abikEzcCplCmQ15qAxv5RXYAWC7f9qfveXZ+yDTayY4MJ0haOqqt
	 gHLkH12gpJjwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 581B2C433FE
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 02:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166632005335.31426.9737549837891951577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b90550c62e17bff313ffa714fd46031c6a36674e59808648709a25dff8f0e01
Date: Fri, 21 Oct 2022 02:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666320053

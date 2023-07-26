Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 444E6A93A
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 23:32:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C23F5C433C8
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 23:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690414328;
	bh=pbgdoWFXCESjx6lNg7wvi7rupP6XA+qDYdniMOW3LDM=;
	h=To:Subject:From:Date:From;
	b=nuTmbIA2BX/3G4TJ5CSu9l+9nO8Gc30YitaXmMHhK1MxYJ5BkcR/Vic+2vrQL53p1
	 DBWyqap1+4iROpKT76o4yl4RbbMs+DKbXngBOXYLXn3JaQSWT5GijlYjSkVs2iyQjX
	 1CVnAZ8vYLM7Yl+Lj1bKgE9STxuarvtMQlRi0JmGvcTDjLlDG0doaZm5mILjgw4bmW
	 zxjBOhH8xRkxPWu9b54GSkOp5h3ye+MLdLSrKNqf/meIPPDxczcFECZj5eoEReW4Q7
	 DdguSg2hDtGAc32IMWt/a2ECaGhLy/OM350J304kJ0wCPg6IxBZL7u+p4i3Jv58M0F
	 OE3+CtPBrfaXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7EA3C001DE
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 23:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169041432868.6468.12029618628293497607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5b4ef9b12a83cf4f4aff8f9378470cd0c5bdc11d448fa2ea30a91a65ff1135f
Date: Wed, 26 Jul 2023 23:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690414328
